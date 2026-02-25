PROTO_0:
        0 DIVK                             R3 R0 K0 [60]
        1 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        2 GETIMPORT                        R2 K3 [math.floor]
        4 CALL                             R2 1 1
        5 DIVK                             R4 R2 K0 [60]
        6 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        7 GETIMPORT                        R3 K3 [math.floor]
        9 CALL                             R3 1 1
       10 LOADN                            R4 0
       11 JUMPIFNOTLT                      R4 R3 ; [+13]
       13 LOADK                            R6 K4 ["Time"]
       14 LOADK                            R7 K5 ["HoursAndMinutes"]
       15 DUPTABLE                         R8 K8 [{"Hours", "Minutes"}]
       16 SETTABLEKS                       R3 R8 K6 ["Hours"]
       18 MODK                             R9 R2 K0 [60]
       19 SETTABLEKS                       R9 R8 K7 ["Minutes"]
       21 NAMECALL                         R4 R1 K9 ["getText"]
       23 CALL                             R4 4 -1
       24 RETURN                           R4 -1
       25 LOADN                            R4 10
       26 JUMPIFNOTLT                      R4 R2 ; [+10]
       28 LOADK                            R6 K4 ["Time"]
       29 LOADK                            R7 K7 ["Minutes"]
       30 DUPTABLE                         R8 K10 [{"Minutes"}]
       31 SETTABLEKS                       R2 R8 K7 ["Minutes"]
       33 NAMECALL                         R4 R1 K9 ["getText"]
       35 CALL                             R4 4 -1
       36 RETURN                           R4 -1
       37 LOADN                            R4 1
       38 JUMPIFNOTLE                      R4 R2 ; [+19]
       40 LOADK                            R6 K4 ["Time"]
       41 LOADK                            R7 K11 ["MinutesAndSeconds"]
       42 DUPTABLE                         R8 K13 [{"Minutes", "Seconds"}]
       43 SETTABLEKS                       R2 R8 K7 ["Minutes"]
       45 DIVK                             R12 R0 K14 [10]
       46 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       47 GETIMPORT                        R11 K3 [math.floor]
       49 CALL                             R11 1 1
       50 MULK                             R10 R11 K14 [10]
       51 MODK                             R9 R10 K0 [60]
       52 SETTABLEKS                       R9 R8 K12 ["Seconds"]
       54 NAMECALL                         R4 R1 K9 ["getText"]
       56 CALL                             R4 4 -1
       57 RETURN                           R4 -1
       58 LOADK                            R6 K4 ["Time"]
       59 LOADK                            R7 K12 ["Seconds"]
       60 DUPTABLE                         R8 K15 [{"Seconds"}]
       61 SETTABLEKS                       R0 R8 K12 ["Seconds"]
       63 NAMECALL                         R4 R1 K9 ["getText"]
       65 CALL                             R4 4 -1
       66 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
