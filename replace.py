import os
replacement = "pragma solidity ^"
for dname, dirs, files in os.walk("node_modules/openzeppelin-solidity"):
    for fname in files:
        fpath = os.path.join(dname, fname)
        with open(fpath) as f:
            s = f.read()
        s = s.replace("pragma solidity >=", replacement)
        with open(fpath, "w") as f:
            f.write(s)