PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["mediaPlayerSignal"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["PLAY"]
        6 NAMECALL                         R0 R0 K2 ["Fire"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 DUPTABLE                         R2 K4 [{"isPlaying"}]
       11 LOADB                            R3 1
       12 SETTABLEKS                       R3 R2 K3 ["isPlaying"]
       14 NAMECALL                         R0 R0 K5 ["setState"]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K6 ["props"]
       20 GETTABLEKS                       R0 R1 K7 ["OnPlay"]
       22 JUMPIFNOT                        R0 ; [+6]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K6 ["props"]
       26 GETTABLEKS                       R0 R1 K7 ["OnPlay"]
       28 CALL                             R0 0 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["mediaPlayerSignal"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["PAUSE"]
        6 NAMECALL                         R0 R0 K2 ["Fire"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 DUPTABLE                         R2 K4 [{"isPlaying"}]
       11 LOADB                            R3 0
       12 SETTABLEKS                       R3 R2 K3 ["isPlaying"]
       14 NAMECALL                         R0 R0 K5 ["setState"]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K6 ["props"]
       20 GETTABLEKS                       R0 R1 K7 ["OnPause"]
       22 JUMPIFNOT                        R0 ; [+6]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K6 ["props"]
       26 GETTABLEKS                       R0 R1 K7 ["OnPause"]
       28 CALL                             R0 0 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"currentTime", "isPlaying"}]
        2 LOADN                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["currentTime"]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["isPlaying"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R0 R1 K4 ["mediaPlayerSignal"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K5 ["SET_TIME"]
       17 NAMECALL                         R0 R0 K6 ["Fire"]
       19 CALL                             R0 2 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R0 R1 K4 ["mediaPlayerSignal"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K7 ["PAUSE"]
       26 NAMECALL                         R0 R0 K6 ["Fire"]
       28 CALL                             R0 2 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isLoaded"}]
        2 SETTABLEKS                       R0 R3 K0 ["isLoaded"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentTime"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentTime"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K3 ["mediaPlayerSignal"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K4 ["SET_TIME"]
       13 NAMECALL                         R1 R1 K5 ["Fire"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"timeLength"}]
        2 SETTABLEKS                       R0 R3 K0 ["timeLength"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isMounted"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["state"]
        7 GETTABLEKS                       R1 R2 K2 ["isPlaying"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K1 ["state"]
       14 GETTABLEKS                       R2 R3 K3 ["currentTime"]
       16 ADD                              R1 R2 R0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K1 ["state"]
       20 GETTABLEKS                       R2 R3 K4 ["timeLength"]
       22 JUMPIFNOTLT                      R1 R2 ; [+8]
       24 GETUPVAL                         R2 0
       25 DUPTABLE                         R4 K5 [{"currentTime"}]
       26 SETTABLEKS                       R1 R4 K3 ["currentTime"]
       28 NAMECALL                         R2 R2 K6 ["setState"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K4 [{"currentTime", "isPlaying", "isLoaded", "timeLength"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["currentTime"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["isPlaying"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["isLoaded"]
       10 LOADN                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["timeLength"]
       13 SETTABLEKS                       R1 R0 K5 ["state"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K6 ["new"]
       18 CALL                             R1 0 1
       19 SETTABLEKS                       R1 R0 K7 ["mediaPlayerSignal"]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R1 R0 K8 ["play"]
       26 NEWCLOSURE                       R1 P1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U1
       29 SETTABLEKS                       R1 R0 K9 ["pause"]
       31 NEWCLOSURE                       R1 P2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R1 R0 K10 ["onEnd"]
       36 NEWCLOSURE                       R1 P3
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R1 R0 K11 ["setIsLoaded"]
       40 NEWCLOSURE                       R1 P4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U1
       43 SETTABLEKS                       R1 R0 K12 ["setCurrentTime"]
       45 NEWCLOSURE                       R1 P5
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R1 R0 K13 ["setTimeLength"]
       49 NEWCLOSURE                       R1 P6
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R1 R0 K14 ["onRenderStepped"]
       53 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["RenderStepped"]
        6 GETTABLEKS                       R3 R0 K2 ["onRenderStepped"]
        8 NAMECALL                         R1 R1 K3 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K4 ["runServiceConnection"]
       13 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["runServiceConnection"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K1 ["runServiceConnection"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["runServiceConnection"]
       14 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["JoinDictionaries"]
        5 GETTABLEKS                       R3 R0 K2 ["props"]
        7 DUPTABLE                         R4 K14 [{"CurrentTime", "IsLoaded", "IsPlaying", "MediaPlayerSignal", "SetIsLoaded", "OnEnd", "OnPlay", "OnPause", "SetCurrentTime", "SetTimeLength", "TimeLength"}]
        8 GETTABLEKS                       R5 R1 K15 ["currentTime"]
       10 SETTABLEKS                       R5 R4 K3 ["CurrentTime"]
       12 GETTABLEKS                       R5 R1 K16 ["isLoaded"]
       14 SETTABLEKS                       R5 R4 K4 ["IsLoaded"]
       16 GETTABLEKS                       R5 R1 K17 ["isPlaying"]
       18 SETTABLEKS                       R5 R4 K5 ["IsPlaying"]
       20 GETTABLEKS                       R5 R0 K18 ["mediaPlayerSignal"]
       22 SETTABLEKS                       R5 R4 K6 ["MediaPlayerSignal"]
       24 GETTABLEKS                       R5 R0 K19 ["setIsLoaded"]
       26 SETTABLEKS                       R5 R4 K7 ["SetIsLoaded"]
       28 GETTABLEKS                       R5 R0 K20 ["onEnd"]
       30 SETTABLEKS                       R5 R4 K8 ["OnEnd"]
       32 GETTABLEKS                       R5 R0 K21 ["play"]
       34 SETTABLEKS                       R5 R4 K9 ["OnPlay"]
       36 GETTABLEKS                       R5 R0 K22 ["pause"]
       38 SETTABLEKS                       R5 R4 K10 ["OnPause"]
       40 GETTABLEKS                       R5 R0 K23 ["setCurrentTime"]
       42 SETTABLEKS                       R5 R4 K11 ["SetCurrentTime"]
       44 GETTABLEKS                       R5 R0 K24 ["setTimeLength"]
       46 SETTABLEKS                       R5 R4 K12 ["SetTimeLength"]
       48 GETTABLEKS                       R5 R1 K25 ["timeLength"]
       50 SETTABLEKS                       R5 R4 K13 ["TimeLength"]
       52 CALL                             R2 2 1
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R3 R4 K26 ["createElement"]
       56 GETUPVAL                         R4 2
       57 MOVE                             R5 R2
       58 CALL                             R3 2 -1
       59 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PureComponent"]
        3 LOADK                            R3 K1 ["MediaPlayerWrapper(%s)"]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R6 R0
        6 GETIMPORT                        R5 K3 [tostring]
        8 CALL                             R5 1 1
        9 NAMECALL                         R3 R3 K4 ["format"]
       11 CALL                             R3 2 -1
       12 NAMECALL                         R1 R1 K5 ["extend"]
       14 CALL                             R1 -1 1
       15 DUPCLOSURE                       R2 K6 [PROTO_7]
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R2 R1 K7 ["init"]
       20 DUPCLOSURE                       R2 K8 [PROTO_8]
       21 CAPTURE                          UPVAL U3
       22 SETTABLEKS                       R2 R1 K9 ["didMount"]
       24 DUPCLOSURE                       R2 K10 [PROTO_9]
       25 SETTABLEKS                       R2 R1 K11 ["willUnmount"]
       27 NEWCLOSURE                       R2 P3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R2 R1 K12 ["render"]
       33 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 LOADK                            R4 K6 ["UI"]
       10 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R1 R2 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R4 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R1 K12 ["Util"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["Signal"]
       29 GETTABLEKS                       R5 R3 K14 ["Immutable"]
       31 GETIMPORT                        R6 K10 [require]
       33 GETIMPORT                        R8 K5 [script]
       35 GETTABLEKS                       R7 R8 K15 ["MediaPlayerSignal"]
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K16 [PROTO_11]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R5
       44 RETURN                           R7 1
