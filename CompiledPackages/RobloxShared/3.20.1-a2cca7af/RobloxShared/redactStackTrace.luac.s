PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 NEWTABLE                         R1 0 0
        6 LOADB                            R2 0
        7 LOADK                            R5 K0 ["\n"]
        8 NAMECALL                         R3 R0 K1 ["split"]
       10 CALL                             R3 2 3
       11 FORGPREP                         R3
       12 LOADK                            R10 K2 ["[%w_%-]+%.[%w_%-%.]+%:%d+[%w \t_]*"]
       13 JUMPIFNOT                        R2 ; [+2]
       14 LOADK                            R11 K3 [""]
       15 JUMP                             ; [+1]
       16 GETUPVAL                         R11 0
       17 NAMECALL                         R8 R7 K4 ["gsub"]
       19 CALL                             R8 3 1
       20 LOADK                            R10 K5 ["[%w_%-]+%.[%w_%-%.]+%:%d+%:[%w \t_]*"]
       21 JUMPIFNOT                        R2 ; [+2]
       22 LOADK                            R11 K3 [""]
       23 JUMP                             ; [+1]
       24 LOADK                            R11 K6 ["Redacted.Stack.Trace:1337: The epic duck is coming!"]
       25 NAMECALL                         R8 R8 K4 ["gsub"]
       27 CALL                             R8 3 1
       28 JUMPIFNOTEQ                      R7 R8 ; [+2]
       30 LOADB                            R2 0 +1
       31 LOADB                            R2 1
       32 JUMPIFNOT                        R2 ; [+5]
       33 LOADK                            R11 K7 ["%S"]
       34 NAMECALL                         R9 R8 K8 ["match"]
       36 CALL                             R9 2 1
       37 JUMPIFNOT                        R9 ; [+7]
       38 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       40 MOVE                             R10 R1
       41 MOVE                             R11 R8
       42 GETIMPORT                        R9 K11 [table.insert]
       44 CALL                             R9 2 0
       45 FORGLOOP                         R3 2 ; [-34]
       47 GETIMPORT                        R3 K13 [table.concat]
       49 MOVE                             R4 R1
       50 LOADK                            R5 K0 ["\n"]
       51 CALL                             R3 2 -1
       52 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 LOADK                            R0 K0 ["\nRedacted.Stack.Trace:1337 function epicDuck"]
        2 LOADN                            R2 4
        3 NAMECALL                         R0 R0 K1 ["rep"]
        5 CALL                             R0 2 1
        6 LOADN                            R2 2
        7 NAMECALL                         R0 R0 K2 ["sub"]
        9 CALL                             R0 2 1
       10 DUPCLOSURE                       R1 K3 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
