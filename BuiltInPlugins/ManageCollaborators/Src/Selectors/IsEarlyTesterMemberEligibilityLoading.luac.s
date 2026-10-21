PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["EarlyTesters"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["fflagEarlyTesterEligibilityFilter"]
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["fflagAddPlayTesterPermission"]
        9 JUMPIFNOT                        R2 ; [+2]
       10 JUMPIFNOTEQKNIL                  R1 ; [+3]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R1 K3 ["PendingMembers"]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 LOADB                            R7 1
       20 GETTABLEKS                       R8 R1 K4 ["Mode"]
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R9 R9 K5 ["CreatingNew"]
       25 JUMPIFEQ                         R8 R9 ; [+5]
       27 GETTABLEKS                       R9 R1 K6 ["ExistingMemberIds"]
       29 GETTABLE                         R8 R9 R5
       30 NOT                              R7 R8
       31 JUMPIFNOT                        R7 ; [+7]
       32 GETTABLEKS                       R9 R1 K7 ["MemberEligibility"]
       34 GETTABLE                         R8 R9 R5
       35 JUMPIFNOTEQKNIL                  R8 ; [+3]
       37 LOADB                            R8 1
       38 RETURN                           R8 1
       39 FORGLOOP                         R2 1 ; [-21]
       41 LOADB                            R2 0
       42 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["EarlyTesterMode"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
