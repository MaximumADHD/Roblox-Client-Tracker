MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["GlobalConfig"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["createReconciler"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["createReconcilerCompat"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["RobloxRenderer"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R5 K3 [script]
       33 GETTABLEKS                       R5 R5 K8 ["strict"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R6 R6 K9 ["Binding"]
       42 CALL                             R5 1 1
       43 MOVE                             R6 R1
       44 MOVE                             R7 R3
       45 CALL                             R6 1 1
       46 MOVE                             R7 R2
       47 MOVE                             R8 R6
       48 CALL                             R7 1 1
       49 MOVE                             R8 R4
       50 DUPTABLE                         R9 K34 [{"Component", "createElement", "createFragment", "oneChild", "PureComponent", "None", "Portal", "createRef", "forwardRef", "createBinding", "joinBindings", "createContext", "Change", "Children", "Event", "Ref", "mount", "unmount", "update", "reify", "teardown", "reconcile", "setGlobalConfig", "UNSTABLE"}]
       51 GETIMPORT                        R10 K1 [require]
       53 GETIMPORT                        R11 K3 [script]
       55 GETTABLEKS                       R11 R11 K10 ["Component"]
       57 CALL                             R10 1 1
       58 SETTABLEKS                       R10 R9 K10 ["Component"]
       60 GETIMPORT                        R10 K1 [require]
       62 GETIMPORT                        R11 K3 [script]
       64 GETTABLEKS                       R11 R11 K11 ["createElement"]
       66 CALL                             R10 1 1
       67 SETTABLEKS                       R10 R9 K11 ["createElement"]
       69 GETIMPORT                        R10 K1 [require]
       71 GETIMPORT                        R11 K3 [script]
       73 GETTABLEKS                       R11 R11 K12 ["createFragment"]
       75 CALL                             R10 1 1
       76 SETTABLEKS                       R10 R9 K12 ["createFragment"]
       78 GETIMPORT                        R10 K1 [require]
       80 GETIMPORT                        R11 K3 [script]
       82 GETTABLEKS                       R11 R11 K13 ["oneChild"]
       84 CALL                             R10 1 1
       85 SETTABLEKS                       R10 R9 K13 ["oneChild"]
       87 GETIMPORT                        R10 K1 [require]
       89 GETIMPORT                        R11 K3 [script]
       91 GETTABLEKS                       R11 R11 K14 ["PureComponent"]
       93 CALL                             R10 1 1
       94 SETTABLEKS                       R10 R9 K14 ["PureComponent"]
       96 GETIMPORT                        R10 K1 [require]
       98 GETIMPORT                        R11 K3 [script]
      100 GETTABLEKS                       R11 R11 K15 ["None"]
      102 CALL                             R10 1 1
      103 SETTABLEKS                       R10 R9 K15 ["None"]
      105 GETIMPORT                        R10 K1 [require]
      107 GETIMPORT                        R11 K3 [script]
      109 GETTABLEKS                       R11 R11 K16 ["Portal"]
      111 CALL                             R10 1 1
      112 SETTABLEKS                       R10 R9 K16 ["Portal"]
      114 GETIMPORT                        R10 K1 [require]
      116 GETIMPORT                        R11 K3 [script]
      118 GETTABLEKS                       R11 R11 K17 ["createRef"]
      120 CALL                             R10 1 1
      121 SETTABLEKS                       R10 R9 K17 ["createRef"]
      123 GETIMPORT                        R10 K1 [require]
      125 GETIMPORT                        R11 K3 [script]
      127 GETTABLEKS                       R11 R11 K18 ["forwardRef"]
      129 CALL                             R10 1 1
      130 SETTABLEKS                       R10 R9 K18 ["forwardRef"]
      132 GETTABLEKS                       R10 R5 K35 ["create"]
      134 SETTABLEKS                       R10 R9 K19 ["createBinding"]
      136 GETTABLEKS                       R10 R5 K36 ["join"]
      138 SETTABLEKS                       R10 R9 K20 ["joinBindings"]
      140 GETIMPORT                        R10 K1 [require]
      142 GETIMPORT                        R11 K3 [script]
      144 GETTABLEKS                       R11 R11 K21 ["createContext"]
      146 CALL                             R10 1 1
      147 SETTABLEKS                       R10 R9 K21 ["createContext"]
      149 GETIMPORT                        R10 K1 [require]
      151 GETIMPORT                        R11 K3 [script]
      153 GETTABLEKS                       R11 R11 K37 ["PropMarkers"]
      155 GETTABLEKS                       R11 R11 K22 ["Change"]
      157 CALL                             R10 1 1
      158 SETTABLEKS                       R10 R9 K22 ["Change"]
      160 GETIMPORT                        R10 K1 [require]
      162 GETIMPORT                        R11 K3 [script]
      164 GETTABLEKS                       R11 R11 K37 ["PropMarkers"]
      166 GETTABLEKS                       R11 R11 K23 ["Children"]
      168 CALL                             R10 1 1
      169 SETTABLEKS                       R10 R9 K23 ["Children"]
      171 GETIMPORT                        R10 K1 [require]
      173 GETIMPORT                        R11 K3 [script]
      175 GETTABLEKS                       R11 R11 K37 ["PropMarkers"]
      177 GETTABLEKS                       R11 R11 K24 ["Event"]
      179 CALL                             R10 1 1
      180 SETTABLEKS                       R10 R9 K24 ["Event"]
      182 GETIMPORT                        R10 K1 [require]
      184 GETIMPORT                        R11 K3 [script]
      186 GETTABLEKS                       R11 R11 K37 ["PropMarkers"]
      188 GETTABLEKS                       R11 R11 K25 ["Ref"]
      190 CALL                             R10 1 1
      191 SETTABLEKS                       R10 R9 K25 ["Ref"]
      193 GETTABLEKS                       R10 R6 K38 ["mountVirtualTree"]
      195 SETTABLEKS                       R10 R9 K26 ["mount"]
      197 GETTABLEKS                       R10 R6 K39 ["unmountVirtualTree"]
      199 SETTABLEKS                       R10 R9 K27 ["unmount"]
      201 GETTABLEKS                       R10 R6 K40 ["updateVirtualTree"]
      203 SETTABLEKS                       R10 R9 K28 ["update"]
      205 GETTABLEKS                       R10 R7 K29 ["reify"]
      207 SETTABLEKS                       R10 R9 K29 ["reify"]
      209 GETTABLEKS                       R10 R7 K30 ["teardown"]
      211 SETTABLEKS                       R10 R9 K30 ["teardown"]
      213 GETTABLEKS                       R10 R7 K31 ["reconcile"]
      215 SETTABLEKS                       R10 R9 K31 ["reconcile"]
      217 GETTABLEKS                       R10 R0 K41 ["set"]
      219 SETTABLEKS                       R10 R9 K32 ["setGlobalConfig"]
      221 NEWTABLE                         R10 0 0
      223 SETTABLEKS                       R10 R9 K33 ["UNSTABLE"]
      225 CALL                             R8 1 1
      226 RETURN                           R8 1
