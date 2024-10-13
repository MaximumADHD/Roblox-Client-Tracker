MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"RecordingsFolderName"}]
  LOADK R1 K2 ["User Input Recordings"]
  SETTABLEKS R1 R0 K0 ["RecordingsFolderName"]
  RETURN R0 1
