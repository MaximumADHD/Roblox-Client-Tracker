MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Guest"]
       13 GETTABLEKS                       R2 R2 K8 ["luaSourceContainerClassNames"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K11 [table.clone]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 FASTCALL2K                       TABLE_INSERT R2 K12 ; [+5]
       22 MOVE                             R4 R2
       23 LOADK                            R5 K12 ["TextDocument"]
       24 GETIMPORT                        R3 K14 [table.insert]
       26 CALL                             R3 2 0
       27 GETIMPORT                        R3 K16 [table.freeze]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 -1
       31 RETURN                           R3 -1
