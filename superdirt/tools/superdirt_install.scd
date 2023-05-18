case
{Quarks.isInstalled("SuperDirt")}  {"Uninstalling old version of SuperDirt".postln; Quarks.uninstall("SuperDirt")};

Quarks.checkForUpdates({Quarks.install("SuperDirt", "v.1.7.3"); if (Quarks.isInstalled("SuperDirt"), {"SuperDirt installed succesfully!".postln; 0.exit;}, {"SuperDirt didn't install correctly!".postln; 1.exit;});});
