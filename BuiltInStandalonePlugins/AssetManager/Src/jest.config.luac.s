MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"displayName", "testMatch", "testTimeout"}]
  LOADK R1 K4 ["AssetManager/Src"]
  SETTABLEKS R1 R0 K0 ["displayName"]
  NEWTABLE R1 0 2
  LOADK R2 K5 ["**/NetworkingImpl.spec"]
  LOADK R3 K6 ["**/*.test"]
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K1 ["testMatch"]
  LOADN R1 16
  SETTABLEKS R1 R0 K2 ["testTimeout"]
  RETURN R0 1
