PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["selectIds"]
        2 GETIMPORT                        R4 K3 [table.freeze]
        4 NEWTABLE                         R5 0 1
        6 MOVE                             R6 R2
        7 SETLIST                          R5 R6 1 [1]
        9 CALL                             R4 1 -1
       10 CALL                             R3 -1 0
       11 GETTABLEKS                       R4 R0 K4 ["capabilities"]
       13 GETTABLEKS                       R3 R4 K5 ["respondsToScriptClicks"]
       15 JUMPIFNOT                        R3 ; [+27]
       16 GETTABLEKS                       R3 R0 K6 ["getExplorerNodeById"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 1
       20 JUMPIFNOTEQKNIL                  R3 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       26 LOADK                            R6 K7 ["Clicking on unknown node"]
       27 GETIMPORT                        R4 K9 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R6 R3 K10 ["datum"]
       33 GETTABLEKS                       R5 R6 K11 ["className"]
       35 CALL                             R4 1 1
       36 JUMPIFNOT                        R4 ; [+6]
       37 GETTABLEKS                       R5 R1 K12 ["guestRpcInterface"]
       39 GETTABLEKS                       R4 R5 K13 ["clickScript"]
       41 MOVE                             R5 R2
       42 CALL                             R4 1 0
       43 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R5 R0 K7 ["Networking"]
       16 GETTABLEKS                       R4 R5 K8 ["createSession"]
       18 GETTABLEKS                       R3 R4 K9 ["createSessionTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K7 ["Networking"]
       25 GETTABLEKS                       R5 R6 K8 ["createSession"]
       27 GETTABLEKS                       R4 R5 K10 ["isClassNameLuaSourceContainer"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K11 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
