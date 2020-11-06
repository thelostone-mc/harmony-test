const init = async () => {
  let to = 'one1crzp6qhczwms38uchngp3xk04ak48ghlky0jkc';

  let hmy = harmony_utils.initHarmony('test');
  let harmonyExt = await harmony_utils.initHarmonyExtension();
  let from = await harmony_utils.loginHarmonyExtension(harmonyExt);
  let hmy_balance = await harmony_utils.getAddressBalance(hmy, from)

  harmony_utils.transfer(hmy, harmonyExt, from, to, 1).then(e=> { 
    console.log("TXN", txn);
    document.getElementById("result").innerHTML = "txn: " + txn;
    document.getElementById("from").innerHTML =  "from: " +  from + " | balance: " + hmy_balance;
    document.getElementById("to").innerHTML =  "to: " + to;
    document.getElementById("amount").innerHTML = "amount:" + 1;
  }).catch(err => {
    console.log("ERROR", err);
    document.getElementById("result").innerHTML = "error: " + err;
    document.getElementById("from").innerHTML = "from: " +  from + " | balance: " + hmy_balance;
    document.getElementById("to").innerHTML = "to: " + to;
    document.getElementById("amount").innerHTML = "amount:" + 1;
  })
};