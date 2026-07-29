PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoginPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableLoginPage"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K11 [plugin]
       23 LOADK                            R4 K12 ["LoginPluginBridge"]
       24 NAMECALL                         R2 R2 K13 ["GetPluginComponent"]
       26 CALL                             R2 2 1
       27 JUMPIF                           R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K14 ["Packages"]
       33 GETTABLEKS                       R4 R4 K15 ["TestLoader"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R3 K16 ["isCli"]
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+5]
       40 GETIMPORT                        R4 K18 [error]
       42 LOADK                            R5 K19 ["roblox-cli should not be loading standalone plugins"]
       43 CALL                             R4 1 0
       44 RETURN                           R0 0
       45 GETIMPORT                        R4 K5 [require]
       47 GETTABLEKS                       R5 R0 K14 ["Packages"]
       49 GETTABLEKS                       R5 R5 K20 ["React"]
       51 CALL                             R4 1 1
       52 GETIMPORT                        R5 K5 [require]
       54 GETTABLEKS                       R6 R0 K14 ["Packages"]
       56 GETTABLEKS                       R6 R6 K21 ["ReactRoblox"]
       58 CALL                             R5 1 1
       59 GETIMPORT                        R6 K5 [require]
       61 GETTABLEKS                       R7 R0 K22 ["Src"]
       63 GETTABLEKS                       R7 R7 K23 ["MainPlugin"]
       65 CALL                             R6 1 1
       66 GETTABLEKS                       R7 R4 K24 ["createElement"]
       68 MOVE                             R8 R6
       69 DUPTABLE                         R9 K26 [{"Plugin"}]
       70 GETIMPORT                        R10 K11 [plugin]
       72 SETTABLEKS                       R10 R9 K25 ["Plugin"]
       74 CALL                             R7 2 1
       75 GETIMPORT                        R8 K29 [Instance.new]
       77 LOADK                            R9 K30 ["Frame"]
       78 CALL                             R8 1 1
       79 GETTABLEKS                       R9 R5 K31 ["createRoot"]
       81 MOVE                             R10 R8
       82 CALL                             R9 1 1
       83 FASTCALL2K                       ASSERT R9 K32 ; [+5]
       85 MOVE                             R11 R9
       86 LOADK                            R12 K32 ["Failed to create React root"]
       87 GETIMPORT                        R10 K34 [assert]
       89 CALL                             R10 2 0
       90 MOVE                             R12 R7
       91 NAMECALL                         R10 R9 K35 ["render"]
       93 CALL                             R10 2 0
       94 GETIMPORT                        R10 K11 [plugin]
       96 GETTABLEKS                       R10 R10 K36 ["Unloading"]
       98 NEWCLOSURE                       R12 P0
       99 CAPTURE                          REF R9
      100 NAMECALL                         R10 R10 K37 ["Connect"]
      102 CALL                             R10 2 0
      103 CLOSEUPVALS                      R9
      104 RETURN                           R0 0
