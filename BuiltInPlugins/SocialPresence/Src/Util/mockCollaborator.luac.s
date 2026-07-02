PROTO_0:
        0 DUPTABLE                         R2 K10 [{[1], ["CollaboratorColor3"], ["CurDocGUID"] = , ["CurScriptLineNumber"] = , ["IsIdle"] = False, ["Status"], ["UserId"], ["Username"]}]
        1 GETIMPORT                        R3 K12 [CFrame.new]
        3 CALL                             R3 0 1
        4 SETTABLEKS                       R3 R2 K0 ["CFrame"]
        6 GETIMPORT                        R3 K14 [Color3.new]
        8 LOADN                            R4 1
        9 LOADN                            R5 0
       10 LOADN                            R6 0
       11 CALL                             R3 3 1
       12 SETTABLEKS                       R3 R2 K1 ["CollaboratorColor3"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K15 ["Editing3D"]
       17 SETTABLEKS                       R3 R2 K7 ["Status"]
       19 ORK                              R3 R0 K16 [3570764360]
       20 SETTABLEKS                       R3 R2 K8 ["UserId"]
       22 ORK                              R3 R1 K17 ["Kresselia1"]
       23 SETTABLEKS                       R3 R2 K9 ["Username"]
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SocialPresence"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["CollaboratorStatus"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
