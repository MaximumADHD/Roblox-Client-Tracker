PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 MOVE                             R3 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 LOADK                            R5 K1 ["Model"]
        5 NAMECALL                         R3 R1 K2 ["IsA"]
        7 CALL                             R3 2 1
        8 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       10 LOADK                            R4 K3 ["Humanoid must be a child of a Model"]
       11 GETIMPORT                        R2 K5 [assert]
       13 CALL                             R2 2 0
       14 NAMECALL                         R2 R1 K6 ["GetChildren"]
       16 CALL                             R2 1 3
       17 FORGPREP                         R2
       18 LOADK                            R9 K7 ["Accessory"]
       19 NAMECALL                         R7 R6 K2 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+36]
       23 LOADK                            R9 K8 ["Handle"]
       24 NAMECALL                         R7 R6 K9 ["FindFirstChild"]
       26 CALL                             R7 2 1
       27 JUMPIFNOT                        R7 ; [+31]
       28 LOADK                            R10 K10 ["AvatarPartScaleType"]
       29 NAMECALL                         R8 R7 K9 ["FindFirstChild"]
       31 CALL                             R8 2 1
       32 JUMPIF                           R8 ; [+13]
       33 GETIMPORT                        R9 K13 [Instance.new]
       35 LOADK                            R10 K14 ["StringValue"]
       36 CALL                             R9 1 1
       37 LOADK                            R10 K10 ["AvatarPartScaleType"]
       38 SETTABLEKS                       R10 R9 K15 ["Name"]
       40 LOADK                            R10 K16 ["ProportionsSlender"]
       41 SETTABLEKS                       R10 R9 K17 ["Value"]
       43 SETTABLEKS                       R7 R9 K0 ["Parent"]
       45 JUMP                             ; [+13]
       46 LOADK                            R12 K14 ["StringValue"]
       47 NAMECALL                         R10 R8 K2 ["IsA"]
       49 CALL                             R10 2 1
       50 FASTCALL2K                       ASSERT R10 K18 ; [+4]
       52 LOADK                            R11 K18 ["Expected AvatarPartScaleType to be a StringValue"]
       53 GETIMPORT                        R9 K5 [assert]
       55 CALL                             R9 2 0
       56 LOADK                            R9 K16 ["ProportionsSlender"]
       57 SETTABLEKS                       R9 R8 K17 ["Value"]
       59 FORGLOOP                         R2 2 ; [-42]
       61 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
