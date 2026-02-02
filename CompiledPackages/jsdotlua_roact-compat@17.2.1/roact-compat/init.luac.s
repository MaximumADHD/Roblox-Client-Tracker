MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["react"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K7 ["react-roblox"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K8 ["shared"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R4 K3 [script]
  LOADK R6 K9 ["RoactTree"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  DUPTABLE R4 K31 [{"Component", "PureComponent", "createElement", "createRef", "forwardRef", "createContext", "None", "mount", "update", "unmount", "createFragment", "oneChild", "setGlobalConfig", "Portal", "Ref", "Children", "Event", "Change", "createBinding", "joinBindings", "act"}]
  GETTABLEKS R5 R0 K10 ["Component"]
  SETTABLEKS R5 R4 K10 ["Component"]
  GETTABLEKS R5 R0 K11 ["PureComponent"]
  SETTABLEKS R5 R4 K11 ["PureComponent"]
  GETTABLEKS R5 R0 K12 ["createElement"]
  SETTABLEKS R5 R4 K12 ["createElement"]
  GETTABLEKS R5 R0 K13 ["createRef"]
  SETTABLEKS R5 R4 K13 ["createRef"]
  GETTABLEKS R5 R0 K14 ["forwardRef"]
  SETTABLEKS R5 R4 K14 ["forwardRef"]
  GETTABLEKS R5 R0 K15 ["createContext"]
  SETTABLEKS R5 R4 K15 ["createContext"]
  GETTABLEKS R5 R0 K16 ["None"]
  SETTABLEKS R5 R4 K16 ["None"]
  GETTABLEKS R5 R3 K17 ["mount"]
  SETTABLEKS R5 R4 K17 ["mount"]
  GETTABLEKS R5 R3 K18 ["update"]
  SETTABLEKS R5 R4 K18 ["update"]
  GETTABLEKS R5 R3 K19 ["unmount"]
  SETTABLEKS R5 R4 K19 ["unmount"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K20 ["createFragment"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K20 ["createFragment"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K21 ["oneChild"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K21 ["oneChild"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K22 ["setGlobalConfig"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K22 ["setGlobalConfig"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K23 ["Portal"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K23 ["Portal"]
  LOADK R5 K32 ["ref"]
  SETTABLEKS R5 R4 K24 ["Ref"]
  LOADK R5 K33 ["children"]
  SETTABLEKS R5 R4 K25 ["Children"]
  GETTABLEKS R5 R2 K26 ["Event"]
  SETTABLEKS R5 R4 K26 ["Event"]
  GETTABLEKS R5 R2 K27 ["Change"]
  SETTABLEKS R5 R4 K27 ["Change"]
  GETTABLEKS R5 R0 K28 ["createBinding"]
  SETTABLEKS R5 R4 K28 ["createBinding"]
  GETTABLEKS R5 R0 K29 ["joinBindings"]
  SETTABLEKS R5 R4 K29 ["joinBindings"]
  GETTABLEKS R5 R1 K30 ["act"]
  SETTABLEKS R5 R4 K30 ["act"]
  RETURN R4 1
