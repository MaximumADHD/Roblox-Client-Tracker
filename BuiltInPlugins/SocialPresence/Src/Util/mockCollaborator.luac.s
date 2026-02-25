PROTO_0:
        0 DUPTABLE                         R2 K8 [{"CFrame", "CollaboratorColor3", "CurDocGUID", "CurScriptLineNumber", "IsIdle", "Status", "UserId", "Username"}]
        1 GETIMPORT                        R3 K10 [CFrame.new]
        3 CALL                             R3 0 1
        4 SETTABLEKS                       R3 R2 K0 ["CFrame"]
        6 GETIMPORT                        R3 K12 [Color3.new]
        8 LOADN                            R4 1
        9 LOADN                            R5 0
       10 LOADN                            R6 0
       11 CALL                             R3 3 1
       12 SETTABLEKS                       R3 R2 K1 ["CollaboratorColor3"]
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R2 K2 ["CurDocGUID"]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K3 ["CurScriptLineNumber"]
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K4 ["IsIdle"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K13 ["Editing3D"]
       26 SETTABLEKS                       R3 R2 K5 ["Status"]
       28 ORK                              R3 R0 K14 [3570764360]
       29 SETTABLEKS                       R3 R2 K6 ["UserId"]
       31 ORK                              R3 R1 K15 ["Kresselia1"]
       32 SETTABLEKS                       R3 R2 K7 ["Username"]
       34 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SocialPresence"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["CollaboratorStatus"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
