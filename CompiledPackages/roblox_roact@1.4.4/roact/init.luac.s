MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["GlobalConfig"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["createReconciler"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["createReconcilerCompat"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["RobloxRenderer"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K8 ["strict"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K9 ["Binding"]
  CALL R5 1 1
  MOVE R6 R1
  MOVE R7 R3
  CALL R6 1 1
  MOVE R7 R2
  MOVE R8 R6
  CALL R7 1 1
  MOVE R8 R4
  DUPTABLE R9 K34 [{"Component", "createElement", "createFragment", "oneChild", "PureComponent", "None", "Portal", "createRef", "forwardRef", "createBinding", "joinBindings", "createContext", "Change", "Children", "Event", "Ref", "mount", "unmount", "update", "reify", "teardown", "reconcile", "setGlobalConfig", "UNSTABLE"}]
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K10 ["Component"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K10 ["Component"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K11 ["createElement"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K11 ["createElement"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K12 ["createFragment"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K12 ["createFragment"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K13 ["oneChild"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K13 ["oneChild"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K14 ["PureComponent"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K14 ["PureComponent"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K15 ["None"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K15 ["None"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K16 ["Portal"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K16 ["Portal"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K17 ["createRef"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K17 ["createRef"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K18 ["forwardRef"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K18 ["forwardRef"]
  GETTABLEKS R10 R5 K35 ["create"]
  SETTABLEKS R10 R9 K19 ["createBinding"]
  GETTABLEKS R10 R5 K36 ["join"]
  SETTABLEKS R10 R9 K20 ["joinBindings"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K21 ["createContext"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K21 ["createContext"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K37 ["PropMarkers"]
  GETTABLEKS R11 R12 K22 ["Change"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K22 ["Change"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K37 ["PropMarkers"]
  GETTABLEKS R11 R12 K23 ["Children"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K23 ["Children"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K37 ["PropMarkers"]
  GETTABLEKS R11 R12 K24 ["Event"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["Event"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K37 ["PropMarkers"]
  GETTABLEKS R11 R12 K25 ["Ref"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K25 ["Ref"]
  GETTABLEKS R10 R6 K38 ["mountVirtualTree"]
  SETTABLEKS R10 R9 K26 ["mount"]
  GETTABLEKS R10 R6 K39 ["unmountVirtualTree"]
  SETTABLEKS R10 R9 K27 ["unmount"]
  GETTABLEKS R10 R6 K40 ["updateVirtualTree"]
  SETTABLEKS R10 R9 K28 ["update"]
  GETTABLEKS R10 R7 K29 ["reify"]
  SETTABLEKS R10 R9 K29 ["reify"]
  GETTABLEKS R10 R7 K30 ["teardown"]
  SETTABLEKS R10 R9 K30 ["teardown"]
  GETTABLEKS R10 R7 K31 ["reconcile"]
  SETTABLEKS R10 R9 K31 ["reconcile"]
  GETTABLEKS R10 R0 K41 ["set"]
  SETTABLEKS R10 R9 K32 ["setGlobalConfig"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K33 ["UNSTABLE"]
  CALL R8 1 1
  RETURN R8 1
