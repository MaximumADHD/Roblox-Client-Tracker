PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K1 [print]
        6 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K1 [print]
       10 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
       11 CALL                             R1 1 0
       12 GETIMPORT                        R1 K1 [print]
       14 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K1 [print]
       18 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: "]
       19 FASTCALL1                        TOSTRING R0 ; [+3]
       20 MOVE                             R5 R0
       21 GETIMPORT                        R4 K5 [tostring]
       23 CALL                             R4 1 1
       24 CONCAT                           R2 R3 R4
       25 CALL                             R1 1 0
       26 GETIMPORT                        R1 K7 [error]
       28 LOADK                            R3 K8 ["FIXME (roblox): "]
       29 MOVE                             R4 R0
       30 LOADK                            R5 K9 [" is unimplemented"]
       31 CONCAT                           R2 R3 R5
       32 LOADN                            R3 2
       33 CALL                             R1 2 0
       34 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+3]
        7 LOADB                            R1 1
        8 RETURN                           R1 1
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K1 [typeof]
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+22]
       16 FASTCALL1                        GETMETATABLE R0 ; [+3]
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K5 [getmetatable]
       20 CALL                             R1 1 1
       21 JUMPIFNOT                        R1 ; [+10]
       22 FASTCALL2K                       RAWGET R1 K6 ; [+5]
       24 MOVE                             R3 R1
       25 LOADK                            R4 K6 ["__call"]
       26 GETIMPORT                        R2 K8 [rawget]
       28 CALL                             R2 2 1
       29 JUMPIFNOT                        R2 ; [+2]
       30 LOADB                            R2 1
       31 RETURN                           R2 1
       32 GETTABLEKS                       R2 R0 K9 ["_isMockFunction"]
       34 JUMPIFNOT                        R2 ; [+2]
       35 LOADB                            R2 1
       36 RETURN                           R2 1
       37 LOADB                            R1 0
       38 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+10]
        2 GETIMPORT                        R2 K1 [require]
        4 GETIMPORT                        R5 K4 [script]
        6 GETTABLEKS                       R4 R5 K5 ["Parent"]
        8 GETTABLEKS                       R3 R4 K2 ["ReactFiberWorkLoop.new"]
       10 CALL                             R2 1 1
       11 SETUPVAL                         R2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K6 ["resolveRetryWakeable"]
       15 MOVE                             R3 R0
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+10]
        2 GETIMPORT                        R0 K1 [require]
        4 GETIMPORT                        R3 K4 [script]
        6 GETTABLEKS                       R2 R3 K5 ["Parent"]
        8 GETTABLEKS                       R1 R2 K2 ["ReactFiberWorkLoop.new"]
       10 CALL                             R0 1 1
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K6 ["markCommitTimeOfFallback"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["warn"]
        3 LOADK                            R2 K1 ["ReactFiberCommitWork: schedulePassiveEffectCallback causes a dependency cycle\n"]
        4 GETIMPORT                        R3 K4 [debug.traceback]
        6 CALL                             R3 0 1
        7 CONCAT                           R1 R2 R3
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["warn"]
        3 LOADK                            R4 K1 ["ReactFiberCommitWork: captureCommitPhaseError causes a dependency cycle"]
        4 CALL                             R3 1 0
        5 GETIMPORT                        R3 K3 [error]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+12]
        2 GETIMPORT                        R1 K1 [require]
        4 GETIMPORT                        R4 K4 [script]
        6 GETTABLEKS                       R3 R4 K5 ["Parent"]
        8 GETTABLEKS                       R2 R3 K2 ["ReactFiberBeginWork.new"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R0 R1 K6 ["didWarnAboutReassigningProps"]
       13 SETUPVAL                         R0 0
       14 GETUPVAL                         R0 0
       15 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["componentWillUnmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["memoizedProps"]
        2 SETTABLEKS                       R2 R1 K1 ["props"]
        4 GETTABLEKS                       R2 R0 K2 ["memoizedState"]
        6 SETTABLEKS                       R2 R1 K3 ["state"]
        8 GETUPVAL                         R2 0
        9 JUMPIFNOT                        R2 ; [+28]
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+26]
       12 GETTABLEKS                       R3 R0 K4 ["mode"]
       14 GETUPVAL                         R4 2
       15 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       17 GETIMPORT                        R2 K7 [bit32.band]
       19 CALL                             R2 2 1
       20 JUMPIFEQKN                       R2 K8 [0] ; [+17]
       22 GETIMPORT                        R2 K10 [xpcall]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R1
       27 GETUPVAL                         R4 4
       28 CALL                             R2 2 2
       29 GETUPVAL                         R4 5
       30 MOVE                             R5 R0
       31 CALL                             R4 1 0
       32 JUMPIF                           R2 ; [+8]
       33 GETIMPORT                        R4 K12 [error]
       35 MOVE                             R5 R3
       36 CALL                             R4 1 0
       37 RETURN                           R0 0
       38 NAMECALL                         R2 R1 K13 ["componentWillUnmount"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R3 K1 [xpcall]
        2 GETUPVAL                         R4 0
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 CALL                             R3 4 2
        7 JUMPIF                           R3 ; [+5]
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R0
       10 MOVE                             R7 R2
       11 MOVE                             R8 R4
       12 CALL                             R5 3 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["ref"]
        2 JUMPIFEQKNIL                     R2 ; [+23]
        4 FASTCALL1                        TYPEOF R2 ; [+3]
        5 MOVE                             R4 R2
        6 GETIMPORT                        R3 K2 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K3 ["function"] ; [+13]
       11 GETIMPORT                        R3 K5 [xpcall]
       13 MOVE                             R4 R2
       14 GETUPVAL                         R5 0
       15 CALL                             R3 2 2
       16 JUMPIF                           R3 ; [+9]
       17 GETUPVAL                         R5 1
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 MOVE                             R8 R4
       21 CALL                             R5 3 0
       22 RETURN                           R0 0
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K6 ["current"]
       26 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R3 K1 [xpcall]
        2 MOVE                             R4 R2
        3 GETUPVAL                         R5 0
        4 CALL                             R3 2 2
        5 JUMPIF                           R3 ; [+5]
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R0
        8 MOVE                             R7 R1
        9 MOVE                             R8 R4
       10 CALL                             R5 3 0
       11 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["tag"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+16]
        5 GETTABLEKS                       R2 R1 K0 ["tag"]
        7 GETUPVAL                         R3 1
        8 JUMPIFEQ                         R2 R3 ; [+11]
       10 GETTABLEKS                       R2 R1 K0 ["tag"]
       12 GETUPVAL                         R3 2
       13 JUMPIFEQ                         R2 R3 ; [+6]
       15 GETTABLEKS                       R2 R1 K0 ["tag"]
       17 GETUPVAL                         R3 3
       18 JUMPIFNOTEQ                      R2 R3 ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R1 K0 ["tag"]
       23 GETUPVAL                         R3 4
       24 JUMPIFNOTEQ                      R2 R3 ; [+83]
       26 GETTABLEKS                       R3 R1 K1 ["flags"]
       28 GETUPVAL                         R4 5
       29 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       31 GETIMPORT                        R2 K4 [bit32.band]
       33 CALL                             R2 2 1
       34 JUMPIFEQKN                       R2 K5 [0] ; [+72]
       36 JUMPIFEQKNIL                     R0 ; [+70]
       38 GETTABLEKS                       R2 R0 K6 ["memoizedProps"]
       40 GETTABLEKS                       R3 R0 K7 ["memoizedState"]
       42 GETTABLEKS                       R4 R1 K8 ["stateNode"]
       44 GETUPVAL                         R5 6
       45 JUMPIFNOT                        R5 ; [+40]
       46 GETTABLEKS                       R5 R1 K9 ["type"]
       48 GETTABLEKS                       R6 R1 K10 ["elementType"]
       50 JUMPIFNOTEQ                      R5 R6 ; [+35]
       52 GETUPVAL                         R5 7
       53 JUMPIF                           R5 ; [+32]
       54 GETTABLEKS                       R5 R4 K11 ["props"]
       56 GETTABLEKS                       R6 R1 K6 ["memoizedProps"]
       58 JUMPIFEQ                         R5 R6 ; [+11]
       60 GETUPVAL                         R6 8
       61 GETTABLEKS                       R5 R6 K12 ["error"]
       63 LOADK                            R6 K13 ["Expected %s props to match memoized props before getSnapshotBeforeUpdate. This might either be because of a bug in React, or because a component reassigns its own `this.props`. Please file an issue."]
       64 GETUPVAL                         R8 9
       65 GETTABLEKS                       R9 R1 K9 ["type"]
       67 CALL                             R8 1 1
       68 ORK                              R7 R8 K14 ["instance"]
       69 CALL                             R5 2 0
       70 GETTABLEKS                       R5 R4 K15 ["state"]
       72 GETTABLEKS                       R6 R1 K7 ["memoizedState"]
       74 JUMPIFEQ                         R5 R6 ; [+11]
       76 GETUPVAL                         R6 8
       77 GETTABLEKS                       R5 R6 K12 ["error"]
       79 LOADK                            R6 K16 ["Expected %s state to match memoized state before getSnapshotBeforeUpdate. This might either be because of a bug in React, or because a component reassigns its own `this.state`. Please file an issue."]
       80 GETUPVAL                         R8 9
       81 GETTABLEKS                       R9 R1 K9 ["type"]
       83 CALL                             R8 1 1
       84 ORK                              R7 R8 K14 ["instance"]
       85 CALL                             R5 2 0
       86 GETTABLEKS                       R8 R1 K10 ["elementType"]
       88 GETTABLEKS                       R9 R1 K9 ["type"]
       90 JUMPIFNOTEQ                      R8 R9 ; [+3]
       92 MOVE                             R7 R2
       93 JUMPIF                           R7 ; [+5]
       94 GETUPVAL                         R7 10
       95 GETTABLEKS                       R8 R1 K9 ["type"]
       97 MOVE                             R9 R2
       98 CALL                             R7 2 1
       99 MOVE                             R8 R3
      100 NAMECALL                         R5 R4 K17 ["getSnapshotBeforeUpdate"]
      102 CALL                             R5 3 1
      103 GETUPVAL                         R6 6
      104 JUMPIFNOT                        R6 ; [0]
      105 SETTABLEKS                       R5 R4 K18 ["__reactInternalSnapshotBeforeUpdate"]
      107 RETURN                           R0 0
      108 GETTABLEKS                       R2 R1 K0 ["tag"]
      110 GETUPVAL                         R3 11
      111 JUMPIFNOTEQ                      R2 R3 ; [+20]
      113 GETUPVAL                         R2 12
      114 JUMPIFNOT                        R2 ; [+16]
      115 GETTABLEKS                       R3 R1 K1 ["flags"]
      117 GETUPVAL                         R4 5
      118 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
      120 GETIMPORT                        R2 K4 [bit32.band]
      122 CALL                             R2 2 1
      123 JUMPIFEQKN                       R2 K5 [0] ; [+7]
      125 GETTABLEKS                       R2 R1 K8 ["stateNode"]
      127 GETUPVAL                         R3 13
      128 GETTABLEKS                       R4 R2 K19 ["containerInfo"]
      130 CALL                             R3 1 0
      131 RETURN                           R0 0
      132 GETTABLEKS                       R2 R1 K0 ["tag"]
      134 GETUPVAL                         R3 14
      135 JUMPIFEQ                         R2 R3 ; [+16]
      137 GETTABLEKS                       R2 R1 K0 ["tag"]
      139 GETUPVAL                         R3 15
      140 JUMPIFEQ                         R2 R3 ; [+11]
      142 GETTABLEKS                       R2 R1 K0 ["tag"]
      144 GETUPVAL                         R3 16
      145 JUMPIFEQ                         R2 R3 ; [+6]
      147 GETTABLEKS                       R2 R1 K0 ["tag"]
      149 GETUPVAL                         R3 17
      150 JUMPIFNOTEQ                      R2 R3 ; [+2]
      152 RETURN                           R0 0
      153 GETUPVAL                         R2 18
      154 LOADB                            R3 0
      155 LOADK                            R4 K20 ["This unit of work tag should not have side-effects. This error is likely caused by a bug in React. Please file an issue."]
      156 CALL                             R2 2 0
      157 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R1 K0 ["updateQueue"]
        2 LOADNIL                          R4
        3 JUMPIFEQKNIL                     R3 ; [+3]
        5 GETTABLEKS                       R4 R3 K1 ["lastEffect"]
        7 JUMPIFEQKNIL                     R4 ; [+37]
        9 GETTABLEKS                       R5 R4 K2 ["next"]
       11 MOVE                             R6 R5
       12 GETTABLEKS                       R8 R6 K3 ["tag"]
       14 FASTCALL2                        BIT32_BAND R8 R0 ; [+4]
       16 MOVE                             R9 R0
       17 GETIMPORT                        R7 K6 [bit32.band]
       19 CALL                             R7 2 1
       20 JUMPIFNOTEQ                      R7 R0 ; [+19]
       22 GETTABLEKS                       R7 R6 K7 ["destroy"]
       24 LOADNIL                          R8
       25 SETTABLEKS                       R8 R6 K7 ["destroy"]
       27 JUMPIFEQKNIL                     R7 ; [+12]
       29 GETIMPORT                        R8 K9 [xpcall]
       31 MOVE                             R9 R7
       32 GETUPVAL                         R10 0
       33 CALL                             R8 2 2
       34 JUMPIF                           R8 ; [+5]
       35 GETUPVAL                         R10 1
       36 MOVE                             R11 R1
       37 MOVE                             R12 R2
       38 MOVE                             R13 R9
       39 CALL                             R10 3 0
       40 GETTABLEKS                       R6 R6 K2 ["next"]
       42 JUMPIFEQ                         R6 R5 ; [+2]
       44 JUMPBACK                         ; [-33]
       45 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["updateQueue"]
        2 JUMPIFEQKNIL                     R2 ; [+4]
        4 GETTABLEKS                       R3 R2 K1 ["lastEffect"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 JUMPIFEQKNIL                     R3 ; [+62]
       10 GETTABLEKS                       R4 R3 K2 ["next"]
       12 MOVE                             R5 R4
       13 GETTABLEKS                       R7 R5 K3 ["tag"]
       15 FASTCALL2                        BIT32_BAND R7 R0 ; [+4]
       17 MOVE                             R8 R0
       18 GETIMPORT                        R6 K6 [bit32.band]
       20 CALL                             R6 2 1
       21 JUMPIFNOTEQ                      R6 R0 ; [+44]
       23 GETTABLEKS                       R6 R5 K7 ["create"]
       25 MOVE                             R7 R6
       26 CALL                             R7 0 1
       27 SETTABLEKS                       R7 R5 K8 ["destroy"]
       29 GETUPVAL                         R7 0
       30 JUMPIFNOT                        R7 ; [+35]
       31 GETTABLEKS                       R7 R5 K8 ["destroy"]
       33 JUMPIFEQKNIL                     R7 ; [+32]
       35 FASTCALL1                        TYPEOF R7 ; [+3]
       36 MOVE                             R9 R7
       37 GETIMPORT                        R8 K10 [typeof]
       39 CALL                             R8 1 1
       40 JUMPIFEQKS                       R8 K11 ["function"] ; [+25]
       42 LOADNIL                          R8
       43 JUMPIFNOTEQKNIL                  R7 ; [+3]
       45 LOADK                            R8 K12 [" You returned nil. If your effect does not require clean up, return nil (or nothing)."]
       46 JUMP                             ; [+13]
       47 GETTABLEKS                       R10 R7 K13 ["andThen"]
       49 FASTCALL1                        TYPEOF R10 ; [+2]
       50 GETIMPORT                        R9 K10 [typeof]
       52 CALL                             R9 1 1
       53 JUMPIFNOTEQKS                    R9 K11 ["function"] ; [+3]
       55 LOADK                            R8 K14 ["\n\nIt looks like you wrote useEffect(Promise.new(function() --[[...]] end) or returned a Promise. Instead, write the async function inside your effect and call it immediately:\n\nuseEffect(function()\n  function fetchData()\n    -- You can await here\n    local response = MyAPI.getData(someId):await()\n    -- ...\n  end\n  fetchData()\nend, {someId}) -- Or {} if effect doesn't need props or state\n\nLearn more about data fetching with Hooks: https://reactjs.org/link/hooks-data-fetching"]
       56 JUMP                             ; [+3]
       57 LOADK                            R9 K15 [" You returned: "]
       58 MOVE                             R10 R7
       59 CONCAT                           R8 R9 R10
       60 GETUPVAL                         R10 1
       61 GETTABLEKS                       R9 R10 K16 ["error"]
       63 LOADK                            R10 K17 ["An effect function must not return anything besides a function, which is used for clean-up.%s"]
       64 MOVE                             R11 R8
       65 CALL                             R9 2 0
       66 GETTABLEKS                       R5 R5 K2 ["next"]
       68 JUMPIFEQ                         R5 R4 ; [+2]
       70 JUMPBACK                         ; [-58]
       71 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+57]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+55]
        4 GETTABLEKS                       R2 R1 K0 ["tag"]
        6 GETUPVAL                         R3 2
        7 JUMPIFNOTEQ                      R2 R3 ; [+51]
        9 GETTABLEKS                       R3 R1 K1 ["stateNode"]
       11 GETTABLEKS                       R2 R3 K2 ["passiveEffectDuration"]
       13 GETTABLEKS                       R5 R1 K3 ["memoizedProps"]
       15 GETTABLEKS                       R3 R5 K4 ["id"]
       17 GETTABLEKS                       R5 R1 K3 ["memoizedProps"]
       19 GETTABLEKS                       R4 R5 K5 ["onPostCommit"]
       21 GETUPVAL                         R5 3
       22 CALL                             R5 0 1
       23 FASTCALL1                        TYPEOF R4 ; [+3]
       24 MOVE                             R7 R4
       25 GETIMPORT                        R6 K7 [typeof]
       27 CALL                             R6 1 1
       28 JUMPIFNOTEQKS                    R6 K8 ["function"] ; [+30]
       30 GETUPVAL                         R6 4
       31 JUMPIFNOT                        R6 ; [+15]
       32 MOVE                             R6 R4
       33 MOVE                             R7 R3
       34 GETTABLEKS                       R9 R1 K9 ["alternate"]
       36 JUMPIFNOTEQKNIL                  R9 ; [+3]
       38 LOADK                            R8 K10 ["mount"]
       39 JUMP                             ; [+1]
       40 LOADK                            R8 K11 ["update"]
       41 MOVE                             R9 R2
       42 MOVE                             R10 R5
       43 GETTABLEKS                       R11 R0 K12 ["memoizedInteractions"]
       45 CALL                             R6 5 0
       46 RETURN                           R0 0
       47 MOVE                             R6 R4
       48 MOVE                             R7 R3
       49 GETTABLEKS                       R9 R1 K9 ["alternate"]
       51 JUMPIFNOTEQKNIL                  R9 ; [+3]
       53 LOADK                            R8 K10 ["mount"]
       54 JUMP                             ; [+1]
       55 LOADK                            R8 K11 ["update"]
       56 MOVE                             R9 R2
       57 MOVE                             R10 R5
       58 CALL                             R6 4 0
       59 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETUPVAL                         R3 3
        5 FASTCALL2                        BIT32_BOR R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [bit32.bor]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 4
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_17:
        0 JUMPIFEQKNIL                     R2 ; [+2]
        2 SETUPVAL                         R2 0
        3 JUMPIFEQKNIL                     R3 ; [+2]
        5 SETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R0 K0 ["flags"]
        8 GETTABLEKS                       R5 R0 K1 ["tag"]
       10 GETUPVAL                         R6 2
       11 JUMPIFNOTEQ                      R5 R6 ; [+161]
       13 LOADNIL                          R6
       14 GETUPVAL                         R7 3
       15 JUMPIFNOT                        R7 ; [+4]
       16 GETUPVAL                         R7 4
       17 JUMPIFNOT                        R7 ; [+2]
       18 GETUPVAL                         R6 5
       19 SETUPVAL                         R0 5
       20 GETTABLEKS                       R7 R0 K2 ["child"]
       22 JUMPIFEQKNIL                     R7 ; [+64]
       24 GETTABLEKS                       R9 R0 K3 ["subtreeFlags"]
       26 GETUPVAL                         R10 6
       27 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       29 GETIMPORT                        R8 K6 [bit32.band]
       31 CALL                             R8 2 1
       32 GETUPVAL                         R9 7
       33 JUMPIFEQ                         R8 R9 ; [+50]
       35 GETUPVAL                         R9 8
       36 JUMPIFNOT                        R9 ; [+32]
       37 GETUPVAL                         R9 9
       38 GETUPVAL                         R10 10
       39 MOVE                             R11 R7
       40 CALL                             R10 1 0
       41 GETUPVAL                         R10 11
       42 LOADNIL                          R11
       43 GETUPVAL                         R12 12
       44 LOADNIL                          R13
       45 MOVE                             R14 R7
       46 MOVE                             R15 R1
       47 GETUPVAL                         R16 0
       48 GETUPVAL                         R17 1
       49 CALL                             R10 7 0
       50 GETUPVAL                         R10 13
       51 CALL                             R10 0 1
       52 JUMPIFNOT                        R10 ; [+7]
       53 GETUPVAL                         R10 14
       54 CALL                             R10 0 1
       55 GETUPVAL                         R11 0
       56 MOVE                             R12 R7
       57 MOVE                             R13 R0
       58 MOVE                             R14 R10
       59 CALL                             R11 3 0
       60 JUMPIFEQKNIL                     R9 ; [+5]
       62 GETUPVAL                         R10 10
       63 MOVE                             R11 R9
       64 CALL                             R10 1 0
       65 JUMP                             ; [+18]
       66 GETUPVAL                         R10 15
       67 CALL                             R10 0 0
       68 JUMP                             ; [+15]
       69 GETIMPORT                        R9 K8 [xpcall]
       71 GETUPVAL                         R10 12
       72 GETUPVAL                         R11 16
       73 MOVE                             R12 R7
       74 MOVE                             R13 R1
       75 GETUPVAL                         R14 0
       76 GETUPVAL                         R15 1
       77 CALL                             R9 6 2
       78 JUMPIF                           R9 ; [+5]
       79 GETUPVAL                         R11 0
       80 MOVE                             R12 R7
       81 MOVE                             R13 R0
       82 MOVE                             R14 R10
       83 CALL                             R11 3 0
       84 GETTABLEKS                       R7 R7 K9 ["sibling"]
       86 JUMPBACK                         ; [-65]
       87 GETUPVAL                         R11 17
       88 GETUPVAL                         R12 18
       89 FASTCALL2                        BIT32_BOR R11 R12 ; [+3]
       91 GETIMPORT                        R10 K11 [bit32.bor]
       93 CALL                             R10 2 1
       94 FASTCALL2                        BIT32_BAND R4 R10 ; [+4]
       96 MOVE                             R9 R4
       97 GETIMPORT                        R8 K6 [bit32.band]
       99 CALL                             R8 2 1
      100 GETUPVAL                         R9 7
      101 JUMPIFEQ                         R8 R9 ; [+52]
      103 GETUPVAL                         R9 3
      104 JUMPIFNOT                        R9 ; [+49]
      105 GETUPVAL                         R9 8
      106 JUMPIFNOT                        R9 ; [+32]
      107 GETUPVAL                         R9 9
      108 GETUPVAL                         R10 10
      109 MOVE                             R11 R0
      110 CALL                             R10 1 0
      111 GETUPVAL                         R10 11
      112 LOADNIL                          R11
      113 GETGLOBAL                        R12 K12 ["commitLayoutEffectsForProfiler"]
      115 LOADNIL                          R13
      116 MOVE                             R14 R0
      117 MOVE                             R15 R1
      118 CALL                             R10 5 0
      119 GETUPVAL                         R10 13
      120 CALL                             R10 0 1
      121 JUMPIFNOT                        R10 ; [+8]
      122 GETUPVAL                         R10 14
      123 CALL                             R10 0 1
      124 GETUPVAL                         R11 0
      125 MOVE                             R12 R0
      126 GETTABLEKS                       R13 R0 K13 ["return_"]
      128 MOVE                             R14 R10
      129 CALL                             R11 3 0
      130 JUMPIFEQKNIL                     R9 ; [+5]
      132 GETUPVAL                         R10 10
      133 MOVE                             R11 R9
      134 CALL                             R10 1 0
      135 JUMP                             ; [+18]
      136 GETUPVAL                         R10 15
      137 CALL                             R10 0 0
      138 JUMP                             ; [+15]
      139 GETIMPORT                        R9 K8 [xpcall]
      141 GETGLOBAL                        R10 K12 ["commitLayoutEffectsForProfiler"]
      143 GETUPVAL                         R11 16
      144 MOVE                             R12 R0
      145 MOVE                             R13 R1
      146 CALL                             R9 4 2
      147 JUMPIF                           R9 ; [+6]
      148 GETUPVAL                         R11 0
      149 MOVE                             R12 R0
      150 GETTABLEKS                       R13 R0 K13 ["return_"]
      152 MOVE                             R14 R10
      153 CALL                             R11 3 0
      154 GETUPVAL                         R9 3
      155 JUMPIFNOT                        R9 ; [+284]
      156 GETUPVAL                         R9 4
      157 JUMPIFNOT                        R9 ; [+282]
      158 JUMPIFEQKNIL                     R6 ; [+12]
      160 GETTABLEKS                       R9 R6 K14 ["stateNode"]
      162 GETTABLEKS                       R10 R9 K15 ["effectDuration"]
      164 GETTABLEKS                       R12 R0 K14 ["stateNode"]
      166 GETTABLEKS                       R11 R12 K15 ["effectDuration"]
      168 ADD                              R10 R10 R11
      169 SETTABLEKS                       R10 R9 K15 ["effectDuration"]
      171 SETUPVAL                         R6 5
      172 RETURN                           R0 0
      173 GETTABLEKS                       R6 R0 K2 ["child"]
      175 JUMPIFEQKNIL                     R6 ; [+107]
      177 GETTABLEKS                       R8 R0 K3 ["subtreeFlags"]
      179 GETUPVAL                         R9 6
      180 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
      182 GETIMPORT                        R7 K6 [bit32.band]
      184 CALL                             R7 2 1
      185 GETUPVAL                         R8 7
      186 JUMPIFEQ                         R7 R8 ; [+93]
      188 GETUPVAL                         R8 8
      189 JUMPIFNOT                        R8 ; [+51]
      190 GETUPVAL                         R9 19
      191 GETTABLEKS                       R8 R9 K16 ["current"]
      193 GETUPVAL                         R9 10
      194 MOVE                             R10 R6
      195 CALL                             R9 1 0
      196 GETUPVAL                         R9 20
      197 LOADN                            R10 20
      198 JUMPIFNOTLT                      R9 R10 ; [+27]
      200 GETUPVAL                         R9 20
      201 ADDK                             R9 R9 K17 [1]
      202 SETUPVAL                         R9 20
      203 GETUPVAL                         R9 11
      204 LOADNIL                          R10
      205 GETUPVAL                         R11 12
      206 LOADNIL                          R12
      207 MOVE                             R13 R6
      208 MOVE                             R14 R1
      209 GETUPVAL                         R15 0
      210 GETUPVAL                         R16 1
      211 CALL                             R9 7 0
      212 GETUPVAL                         R9 20
      213 SUBK                             R9 R9 K17 [1]
      214 SETUPVAL                         R9 20
      215 GETUPVAL                         R9 13
      216 CALL                             R9 0 1
      217 JUMPIFNOT                        R9 ; [+14]
      218 GETUPVAL                         R9 14
      219 CALL                             R9 0 1
      220 GETUPVAL                         R10 0
      221 MOVE                             R11 R6
      222 MOVE                             R12 R0
      223 MOVE                             R13 R9
      224 CALL                             R10 3 0
      225 JUMP                             ; [+6]
      226 GETUPVAL                         R9 12
      227 MOVE                             R10 R6
      228 MOVE                             R11 R1
      229 GETUPVAL                         R12 0
      230 GETUPVAL                         R13 1
      231 CALL                             R9 4 0
      232 JUMPIFEQKNIL                     R8 ; [+5]
      234 GETUPVAL                         R9 10
      235 MOVE                             R10 R8
      236 CALL                             R9 1 0
      237 JUMP                             ; [+42]
      238 GETUPVAL                         R9 15
      239 CALL                             R9 0 0
      240 JUMP                             ; [+39]
      241 LOADNIL                          R8
      242 LOADNIL                          R9
      243 GETUPVAL                         R10 21
      244 JUMPIF                           R10 ; [+22]
      245 GETUPVAL                         R10 20
      246 LOADN                            R11 20
      247 JUMPIFNOTLT                      R10 R11 ; [+19]
      249 GETUPVAL                         R10 20
      250 ADDK                             R10 R10 K17 [1]
      251 SETUPVAL                         R10 20
      252 GETIMPORT                        R10 K8 [xpcall]
      254 GETUPVAL                         R11 12
      255 GETUPVAL                         R12 16
      256 MOVE                             R13 R6
      257 MOVE                             R14 R1
      258 GETUPVAL                         R15 0
      259 GETUPVAL                         R16 1
      260 CALL                             R10 6 2
      261 MOVE                             R8 R10
      262 MOVE                             R9 R11
      263 GETUPVAL                         R10 20
      264 SUBK                             R10 R10 K17 [1]
      265 SETUPVAL                         R10 20
      266 JUMP                             ; [+7]
      267 LOADB                            R8 1
      268 GETUPVAL                         R10 12
      269 MOVE                             R11 R6
      270 MOVE                             R12 R1
      271 GETUPVAL                         R13 0
      272 GETUPVAL                         R14 1
      273 CALL                             R10 4 0
      274 JUMPIF                           R8 ; [+5]
      275 GETUPVAL                         R10 0
      276 MOVE                             R11 R6
      277 MOVE                             R12 R0
      278 MOVE                             R13 R9
      279 CALL                             R10 3 0
      280 GETTABLEKS                       R6 R6 K9 ["sibling"]
      282 JUMPBACK                         ; [-108]
      283 GETUPVAL                         R10 17
      284 GETUPVAL                         R11 18
      285 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
      287 GETIMPORT                        R9 K11 [bit32.bor]
      289 CALL                             R9 2 1
      290 FASTCALL2                        BIT32_BAND R4 R9 ; [+4]
      292 MOVE                             R8 R4
      293 GETIMPORT                        R7 K6 [bit32.band]
      295 CALL                             R7 2 1
      296 GETUPVAL                         R8 7
      297 JUMPIFEQ                         R7 R8 ; [+129]
      299 GETUPVAL                         R8 22
      300 JUMPIFEQ                         R5 R8 ; [+10]
      302 GETUPVAL                         R8 23
      303 JUMPIFEQ                         R5 R8 ; [+7]
      305 GETUPVAL                         R8 24
      306 JUMPIFEQ                         R5 R8 ; [+4]
      308 GETUPVAL                         R8 25
      309 JUMPIFNOTEQ                      R5 R8 ; [+58]
      311 GETUPVAL                         R8 3
      312 JUMPIFNOT                        R8 ; [+31]
      313 GETUPVAL                         R8 4
      314 JUMPIFNOT                        R8 ; [+29]
      315 GETTABLEKS                       R9 R0 K18 ["mode"]
      317 GETUPVAL                         R10 26
      318 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      320 GETIMPORT                        R8 K6 [bit32.band]
      322 CALL                             R8 2 1
      323 JUMPIFEQKN                       R8 K19 [0] ; [+20]
      325 GETIMPORT                        R8 K8 [xpcall]
      327 NEWCLOSURE                       R9 P0
      328 CAPTURE                          UPVAL U27
      329 CAPTURE                          UPVAL U28
      330 CAPTURE                          UPVAL U29
      331 CAPTURE                          UPVAL U30
      332 CAPTURE                          VAL R0
      333 GETUPVAL                         R10 16
      334 CALL                             R8 2 2
      335 GETUPVAL                         R10 31
      336 MOVE                             R11 R0
      337 CALL                             R10 1 0
      338 JUMPIF                           R8 ; [+15]
      339 GETIMPORT                        R10 K21 [error]
      341 MOVE                             R11 R9
      342 CALL                             R10 1 0
      343 JUMP                             ; [+10]
      344 GETUPVAL                         R8 28
      345 GETUPVAL                         R10 29
      346 GETUPVAL                         R11 30
      347 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
      349 GETIMPORT                        R9 K11 [bit32.bor]
      351 CALL                             R9 2 1
      352 MOVE                             R10 R0
      353 CALL                             R8 2 0
      354 GETTABLEKS                       R9 R0 K3 ["subtreeFlags"]
      356 GETUPVAL                         R10 32
      357 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      359 GETIMPORT                        R8 K6 [bit32.band]
      361 CALL                             R8 2 1
      362 GETUPVAL                         R9 7
      363 JUMPIFEQ                         R8 R9 ; [+63]
      365 GETUPVAL                         R8 1
      366 CALL                             R8 0 0
      367 JUMP                             ; [+59]
      368 GETUPVAL                         R8 33
      369 JUMPIFNOTEQ                      R5 R8 ; [+5]
      371 GETUPVAL                         R8 34
      372 MOVE                             R9 R0
      373 CALL                             R8 1 0
      374 JUMP                             ; [+52]
      375 GETUPVAL                         R8 35
      376 JUMPIFNOTEQ                      R5 R8 ; [+5]
      378 GETUPVAL                         R8 36
      379 MOVE                             R9 R0
      380 CALL                             R8 1 0
      381 JUMP                             ; [+45]
      382 GETUPVAL                         R8 37
      383 JUMPIFNOTEQ                      R5 R8 ; [+5]
      385 GETUPVAL                         R8 38
      386 MOVE                             R9 R0
      387 CALL                             R8 1 0
      388 JUMP                             ; [+38]
      389 GETUPVAL                         R8 39
      390 JUMPIFNOTEQ                      R5 R8 ; [+7]
      392 GETGLOBAL                        R8 K22 ["commitSuspenseHydrationCallbacks"]
      394 MOVE                             R9 R1
      395 MOVE                             R10 R0
      396 CALL                             R8 2 0
      397 JUMP                             ; [+29]
      398 GETUPVAL                         R8 40
      399 JUMPIFEQ                         R5 R8 ; [+27]
      401 GETUPVAL                         R8 41
      402 JUMPIFEQ                         R5 R8 ; [+24]
      404 GETUPVAL                         R8 42
      405 JUMPIFEQ                         R5 R8 ; [+21]
      407 GETUPVAL                         R8 43
      408 JUMPIFEQ                         R5 R8 ; [+18]
      410 GETUPVAL                         R8 44
      411 JUMPIFEQ                         R5 R8 ; [+15]
      413 GETUPVAL                         R8 45
      414 JUMPIFEQ                         R5 R8 ; [+12]
      416 GETUPVAL                         R8 46
      417 JUMPIFEQ                         R5 R8 ; [+9]
      419 GETUPVAL                         R8 47
      420 JUMPIFNOTEQ                      R5 R8 ; [+2]
      422 JUMP                             ; [+4]
      423 GETUPVAL                         R8 48
      424 LOADB                            R9 0
      425 LOADK                            R10 K23 ["This unit of work tag should not have side-effects. This error is likely caused by a bug in React. Please file an issue."]
      426 CALL                             R8 2 0
      427 GETUPVAL                         R10 49
      428 FASTCALL2                        BIT32_BAND R4 R10 ; [+4]
      430 MOVE                             R9 R4
      431 GETIMPORT                        R8 K6 [bit32.band]
      433 CALL                             R8 2 1
      434 JUMPIFEQKN                       R8 K19 [0] ; [+5]
      436 GETGLOBAL                        R8 K24 ["commitAttachRef"]
      438 MOVE                             R9 R0
      439 CALL                             R8 1 0
      440 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+192]
        2 GETTABLEKS                       R2 R0 K0 ["flags"]
        4 GETTABLEKS                       R3 R0 K1 ["alternate"]
        6 GETTABLEKS                       R6 R0 K2 ["memoizedProps"]
        8 GETTABLEKS                       R4 R6 K3 ["onCommit"]
       10 GETTABLEKS                       R6 R0 K2 ["memoizedProps"]
       12 GETTABLEKS                       R5 R6 K4 ["onRender"]
       14 GETTABLEKS                       R7 R0 K5 ["stateNode"]
       16 GETTABLEKS                       R6 R7 K6 ["effectDuration"]
       18 GETUPVAL                         R7 1
       19 CALL                             R7 0 1
       20 GETUPVAL                         R8 2
       21 GETUPVAL                         R9 3
       22 FASTCALL2                        BIT32_BAND R2 R8 ; [+5]
       24 MOVE                             R11 R2
       25 MOVE                             R12 R8
       26 GETIMPORT                        R10 K9 [bit32.band]
       28 CALL                             R10 2 1
       29 GETUPVAL                         R11 4
       30 JUMPIFEQ                         R10 R11 ; [+81]
       32 FASTCALL1                        TYPEOF R5 ; [+3]
       33 MOVE                             R12 R5
       34 GETIMPORT                        R11 K11 [typeof]
       36 CALL                             R11 1 1
       37 JUMPIFNOTEQKS                    R11 K12 ["function"] ; [+3]
       39 LOADB                            R10 1
       40 JUMP                             ; [+29]
       41 FASTCALL1                        TYPEOF R5 ; [+3]
       42 MOVE                             R12 R5
       43 GETIMPORT                        R11 K11 [typeof]
       45 CALL                             R11 1 1
       46 JUMPIFNOTEQKS                    R11 K13 ["table"] ; [+22]
       48 FASTCALL1                        GETMETATABLE R5 ; [+3]
       49 MOVE                             R12 R5
       50 GETIMPORT                        R11 K15 [getmetatable]
       52 CALL                             R11 1 1
       53 JUMPIFNOT                        R11 ; [+10]
       54 FASTCALL2K                       RAWGET R11 K16 ; [+5]
       56 MOVE                             R13 R11
       57 LOADK                            R14 K16 ["__call"]
       58 GETIMPORT                        R12 K18 [rawget]
       60 CALL                             R12 2 1
       61 JUMPIFNOT                        R12 ; [+2]
       62 LOADB                            R10 1
       63 JUMP                             ; [+6]
       64 GETTABLEKS                       R12 R5 K19 ["_isMockFunction"]
       66 JUMPIFNOT                        R12 ; [+2]
       67 LOADB                            R10 1
       68 JUMP                             ; [+1]
       69 LOADB                            R10 0
       70 JUMPIFNOT                        R10 ; [+41]
       71 GETUPVAL                         R10 5
       72 JUMPIFNOT                        R10 ; [+21]
       73 MOVE                             R10 R5
       74 GETTABLEKS                       R12 R0 K2 ["memoizedProps"]
       76 GETTABLEKS                       R11 R12 K20 ["id"]
       78 JUMPIFNOTEQKNIL                  R3 ; [+3]
       80 LOADK                            R12 K21 ["mount"]
       81 JUMP                             ; [+1]
       82 LOADK                            R12 K22 ["update"]
       83 GETTABLEKS                       R13 R0 K23 ["actualDuration"]
       85 GETTABLEKS                       R14 R0 K24 ["treeBaseDuration"]
       87 GETTABLEKS                       R15 R0 K25 ["actualStartTime"]
       89 MOVE                             R16 R7
       90 GETTABLEKS                       R17 R1 K26 ["memoizedInteractions"]
       92 CALL                             R10 7 0
       93 JUMP                             ; [+18]
       94 MOVE                             R10 R5
       95 GETTABLEKS                       R12 R0 K2 ["memoizedProps"]
       97 GETTABLEKS                       R11 R12 K20 ["id"]
       99 JUMPIFNOTEQKNIL                  R3 ; [+3]
      101 LOADK                            R12 K21 ["mount"]
      102 JUMP                             ; [+1]
      103 LOADK                            R12 K22 ["update"]
      104 GETTABLEKS                       R13 R0 K23 ["actualDuration"]
      106 GETTABLEKS                       R14 R0 K24 ["treeBaseDuration"]
      108 GETTABLEKS                       R15 R0 K25 ["actualStartTime"]
      110 MOVE                             R16 R7
      111 CALL                             R10 6 0
      112 GETUPVAL                         R10 6
      113 JUMPIFNOT                        R10 ; [+80]
      114 FASTCALL2                        BIT32_BAND R2 R9 ; [+5]
      116 MOVE                             R11 R2
      117 MOVE                             R12 R9
      118 GETIMPORT                        R10 K9 [bit32.band]
      120 CALL                             R10 2 1
      121 GETUPVAL                         R11 4
      122 JUMPIFEQ                         R10 R11 ; [+71]
      124 FASTCALL1                        TYPEOF R4 ; [+3]
      125 MOVE                             R12 R4
      126 GETIMPORT                        R11 K11 [typeof]
      128 CALL                             R11 1 1
      129 JUMPIFNOTEQKS                    R11 K12 ["function"] ; [+3]
      131 LOADB                            R10 1
      132 JUMP                             ; [+29]
      133 FASTCALL1                        TYPEOF R4 ; [+3]
      134 MOVE                             R12 R4
      135 GETIMPORT                        R11 K11 [typeof]
      137 CALL                             R11 1 1
      138 JUMPIFNOTEQKS                    R11 K13 ["table"] ; [+22]
      140 FASTCALL1                        GETMETATABLE R4 ; [+3]
      141 MOVE                             R12 R4
      142 GETIMPORT                        R11 K15 [getmetatable]
      144 CALL                             R11 1 1
      145 JUMPIFNOT                        R11 ; [+10]
      146 FASTCALL2K                       RAWGET R11 K16 ; [+5]
      148 MOVE                             R13 R11
      149 LOADK                            R14 K16 ["__call"]
      150 GETIMPORT                        R12 K18 [rawget]
      152 CALL                             R12 2 1
      153 JUMPIFNOT                        R12 ; [+2]
      154 LOADB                            R10 1
      155 JUMP                             ; [+6]
      156 GETTABLEKS                       R12 R4 K19 ["_isMockFunction"]
      158 JUMPIFNOT                        R12 ; [+2]
      159 LOADB                            R10 1
      160 JUMP                             ; [+1]
      161 LOADB                            R10 0
      162 JUMPIFNOT                        R10 ; [+31]
      163 GETUPVAL                         R10 5
      164 JUMPIFNOT                        R10 ; [+16]
      165 MOVE                             R10 R4
      166 GETTABLEKS                       R12 R0 K2 ["memoizedProps"]
      168 GETTABLEKS                       R11 R12 K20 ["id"]
      170 JUMPIFNOTEQKNIL                  R3 ; [+3]
      172 LOADK                            R12 K21 ["mount"]
      173 JUMP                             ; [+1]
      174 LOADK                            R12 K22 ["update"]
      175 MOVE                             R13 R6
      176 MOVE                             R14 R7
      177 GETTABLEKS                       R15 R1 K26 ["memoizedInteractions"]
      179 CALL                             R10 5 0
      180 RETURN                           R0 0
      181 MOVE                             R10 R4
      182 GETTABLEKS                       R12 R0 K2 ["memoizedProps"]
      184 GETTABLEKS                       R11 R12 K20 ["id"]
      186 JUMPIFNOTEQKNIL                  R3 ; [+3]
      188 LOADK                            R12 K21 ["mount"]
      189 JUMP                             ; [+1]
      190 LOADK                            R12 K22 ["update"]
      191 MOVE                             R13 R6
      192 MOVE                             R14 R7
      193 CALL                             R10 4 0
      194 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["componentDidMount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETUPVAL                         R3 3
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K0 ["__reactInternalSnapshotBeforeUpdate"]
        8 NAMECALL                         R0 R0 K1 ["componentDidUpdate"]
       10 CALL                             R0 4 0
       11 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["stateNode"]
        2 GETTABLEKS                       R2 R0 K1 ["alternate"]
        4 GETTABLEKS                       R4 R0 K2 ["flags"]
        6 GETUPVAL                         R5 0
        7 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
        9 GETIMPORT                        R3 K5 [bit32.band]
       11 CALL                             R3 2 1
       12 JUMPIFEQKN                       R3 K6 [0] ; [+177]
       14 JUMPIFNOTEQKNIL                  R2 ; [+77]
       16 GETUPVAL                         R3 1
       17 JUMPIFNOT                        R3 ; [+40]
       18 GETTABLEKS                       R3 R0 K7 ["type"]
       20 GETTABLEKS                       R4 R0 K8 ["elementType"]
       22 JUMPIFNOTEQ                      R3 R4 ; [+35]
       24 GETUPVAL                         R3 2
       25 JUMPIF                           R3 ; [+32]
       26 GETTABLEKS                       R3 R1 K9 ["props"]
       28 GETTABLEKS                       R4 R0 K10 ["memoizedProps"]
       30 JUMPIFEQ                         R3 R4 ; [+11]
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R3 R4 K11 ["error"]
       35 LOADK                            R4 K12 ["Expected %s props to match memoized props before componentDidMount. This might either be because of a bug in React, or because a component reassigns its own `this.props`. Please file an issue."]
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R7 R0 K7 ["type"]
       39 CALL                             R6 1 1
       40 ORK                              R5 R6 K13 ["instance"]
       41 CALL                             R3 2 0
       42 GETTABLEKS                       R3 R1 K14 ["state"]
       44 GETTABLEKS                       R4 R0 K15 ["memoizedState"]
       46 JUMPIFEQ                         R3 R4 ; [+11]
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R3 R4 K11 ["error"]
       51 LOADK                            R4 K16 ["Expected %s state to match memoized state before componentDidMount. This might either be because of a bug in React, or because a component reassigns its own `this.state`. Please file an issue."]
       52 GETUPVAL                         R6 4
       53 GETTABLEKS                       R7 R0 K7 ["type"]
       55 CALL                             R6 1 1
       56 ORK                              R5 R6 K13 ["instance"]
       57 CALL                             R3 2 0
       58 GETUPVAL                         R3 5
       59 JUMPIFNOT                        R3 ; [+28]
       60 GETUPVAL                         R3 6
       61 JUMPIFNOT                        R3 ; [+26]
       62 GETTABLEKS                       R4 R0 K17 ["mode"]
       64 GETUPVAL                         R5 7
       65 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       67 GETIMPORT                        R3 K5 [bit32.band]
       69 CALL                             R3 2 1
       70 JUMPIFEQKN                       R3 K6 [0] ; [+17]
       72 GETIMPORT                        R3 K19 [xpcall]
       74 NEWCLOSURE                       R4 P0
       75 CAPTURE                          UPVAL U8
       76 CAPTURE                          VAL R1
       77 GETUPVAL                         R5 9
       78 CALL                             R3 2 2
       79 GETUPVAL                         R5 10
       80 MOVE                             R6 R0
       81 CALL                             R5 1 0
       82 JUMPIF                           R3 ; [+107]
       83 GETIMPORT                        R5 K20 [error]
       85 MOVE                             R6 R4
       86 CALL                             R5 1 0
       87 JUMP                             ; [+102]
       88 NAMECALL                         R3 R1 K21 ["componentDidMount"]
       90 CALL                             R3 1 0
       91 JUMP                             ; [+98]
       92 GETTABLEKS                       R4 R0 K8 ["elementType"]
       94 GETTABLEKS                       R5 R0 K7 ["type"]
       96 JUMPIFNOTEQ                      R4 R5 ; [+4]
       98 GETTABLEKS                       R3 R2 K10 ["memoizedProps"]
      100 JUMPIF                           R3 ; [+6]
      101 GETUPVAL                         R3 11
      102 GETTABLEKS                       R4 R0 K7 ["type"]
      104 GETTABLEKS                       R5 R2 K10 ["memoizedProps"]
      106 CALL                             R3 2 1
      107 GETTABLEKS                       R4 R2 K15 ["memoizedState"]
      109 GETUPVAL                         R5 1
      110 JUMPIFNOT                        R5 ; [+40]
      111 GETTABLEKS                       R5 R0 K7 ["type"]
      113 GETTABLEKS                       R6 R0 K8 ["elementType"]
      115 JUMPIFNOTEQ                      R5 R6 ; [+35]
      117 GETUPVAL                         R5 2
      118 JUMPIF                           R5 ; [+32]
      119 GETTABLEKS                       R5 R1 K9 ["props"]
      121 GETTABLEKS                       R6 R0 K10 ["memoizedProps"]
      123 JUMPIFEQ                         R5 R6 ; [+11]
      125 GETUPVAL                         R6 3
      126 GETTABLEKS                       R5 R6 K11 ["error"]
      128 LOADK                            R6 K22 ["Expected %s props to match memoized props before componentDidUpdate. This might either be because of a bug in React, or because a component reassigns its own `this.props`. Please file an issue."]
      129 GETUPVAL                         R8 4
      130 GETTABLEKS                       R9 R0 K7 ["type"]
      132 CALL                             R8 1 1
      133 ORK                              R7 R8 K13 ["instance"]
      134 CALL                             R5 2 0
      135 GETTABLEKS                       R5 R1 K14 ["state"]
      137 GETTABLEKS                       R6 R0 K15 ["memoizedState"]
      139 JUMPIFEQ                         R5 R6 ; [+11]
      141 GETUPVAL                         R6 3
      142 GETTABLEKS                       R5 R6 K11 ["error"]
      144 LOADK                            R6 K23 ["Expected %s state to match memoized state before componentDidUpdate. This might either be because of a bug in React, or because a component reassigns its own `this.state`. Please file an issue."]
      145 GETUPVAL                         R8 4
      146 GETTABLEKS                       R9 R0 K7 ["type"]
      148 CALL                             R8 1 1
      149 ORK                              R7 R8 K13 ["instance"]
      150 CALL                             R5 2 0
      151 GETUPVAL                         R5 5
      152 JUMPIFNOT                        R5 ; [+30]
      153 GETUPVAL                         R5 6
      154 JUMPIFNOT                        R5 ; [+28]
      155 GETTABLEKS                       R6 R0 K17 ["mode"]
      157 GETUPVAL                         R7 7
      158 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
      160 GETIMPORT                        R5 K5 [bit32.band]
      162 CALL                             R5 2 1
      163 JUMPIFEQKN                       R5 K6 [0] ; [+19]
      165 GETIMPORT                        R5 K19 [xpcall]
      167 NEWCLOSURE                       R6 P1
      168 CAPTURE                          UPVAL U8
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R4
      172 GETUPVAL                         R7 9
      173 CALL                             R5 2 2
      174 GETUPVAL                         R7 10
      175 MOVE                             R8 R0
      176 CALL                             R7 1 0
      177 JUMPIF                           R5 ; [+12]
      178 GETIMPORT                        R7 K20 [error]
      180 MOVE                             R8 R6
      181 CALL                             R7 1 0
      182 JUMP                             ; [+7]
      183 MOVE                             R7 R3
      184 MOVE                             R8 R4
      185 GETTABLEKS                       R9 R1 K24 ["__reactInternalSnapshotBeforeUpdate"]
      187 NAMECALL                         R5 R1 K25 ["componentDidUpdate"]
      189 CALL                             R5 4 0
      190 GETTABLEKS                       R3 R0 K26 ["updateQueue"]
      192 JUMPIFEQKNIL                     R3 ; [+48]
      194 GETUPVAL                         R4 1
      195 JUMPIFNOT                        R4 ; [+40]
      196 GETTABLEKS                       R4 R0 K7 ["type"]
      198 GETTABLEKS                       R5 R0 K8 ["elementType"]
      200 JUMPIFNOTEQ                      R4 R5 ; [+35]
      202 GETUPVAL                         R4 2
      203 JUMPIF                           R4 ; [+32]
      204 GETTABLEKS                       R4 R1 K9 ["props"]
      206 GETTABLEKS                       R5 R0 K10 ["memoizedProps"]
      208 JUMPIFEQ                         R4 R5 ; [+11]
      210 GETUPVAL                         R5 3
      211 GETTABLEKS                       R4 R5 K11 ["error"]
      213 LOADK                            R5 K27 ["Expected %s props to match memoized props before processing the update queue. This might either be because of a bug in React, or because a component reassigns its own `this.props`. Please file an issue."]
      214 GETUPVAL                         R7 4
      215 GETTABLEKS                       R8 R0 K7 ["type"]
      217 CALL                             R7 1 1
      218 ORK                              R6 R7 K13 ["instance"]
      219 CALL                             R4 2 0
      220 GETTABLEKS                       R4 R1 K14 ["state"]
      222 GETTABLEKS                       R5 R0 K15 ["memoizedState"]
      224 JUMPIFEQ                         R4 R5 ; [+11]
      226 GETUPVAL                         R5 3
      227 GETTABLEKS                       R4 R5 K11 ["error"]
      229 LOADK                            R5 K28 ["Expected %s state to match memoized state before processing the update queue. This might either be because of a bug in React, or because a component reassigns its own `this.state`. Please file an issue."]
      230 GETUPVAL                         R7 4
      231 GETTABLEKS                       R8 R0 K7 ["type"]
      233 CALL                             R7 1 1
      234 ORK                              R6 R7 K13 ["instance"]
      235 CALL                             R4 2 0
      236 GETUPVAL                         R4 12
      237 MOVE                             R5 R0
      238 MOVE                             R6 R3
      239 MOVE                             R7 R1
      240 CALL                             R4 3 0
      241 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["updateQueue"]
        2 JUMPIFEQKNIL                     R1 ; [+31]
        4 LOADNIL                          R2
        5 GETTABLEKS                       R3 R0 K1 ["child"]
        7 JUMPIFEQKNIL                     R3 ; [+21]
        9 GETTABLEKS                       R3 R0 K1 ["child"]
       11 GETTABLEKS                       R4 R3 K2 ["tag"]
       13 GETUPVAL                         R5 0
       14 JUMPIFNOTEQ                      R4 R5 ; [+7]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R5 R3 K3 ["stateNode"]
       19 CALL                             R4 1 1
       20 MOVE                             R2 R4
       21 JUMP                             ; [+7]
       22 GETTABLEKS                       R4 R3 K2 ["tag"]
       24 GETUPVAL                         R5 2
       25 JUMPIFNOTEQ                      R4 R5 ; [+3]
       27 GETTABLEKS                       R2 R3 K3 ["stateNode"]
       29 GETUPVAL                         R3 3
       30 MOVE                             R4 R0
       31 MOVE                             R5 R1
       32 MOVE                             R6 R2
       33 CALL                             R3 3 0
       34 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["stateNode"]
        2 GETTABLEKS                       R2 R0 K1 ["alternate"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+21]
        6 GETTABLEKS                       R4 R0 K2 ["flags"]
        8 GETUPVAL                         R5 0
        9 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       11 GETIMPORT                        R3 K5 [bit32.band]
       13 CALL                             R3 2 1
       14 JUMPIFEQKN                       R3 K6 [0] ; [+11]
       16 GETTABLEKS                       R3 R0 K7 ["type"]
       18 GETTABLEKS                       R4 R0 K8 ["memoizedProps"]
       20 GETUPVAL                         R5 1
       21 MOVE                             R6 R1
       22 MOVE                             R7 R3
       23 MOVE                             R8 R4
       24 MOVE                             R9 R0
       25 CALL                             R5 4 0
       26 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+94]
        2 MOVE                             R2 R0
        3 GETTABLEKS                       R3 R2 K0 ["tag"]
        5 GETUPVAL                         R4 1
        6 JUMPIFNOTEQ                      R3 R4 ; [+15]
        8 GETTABLEKS                       R3 R2 K1 ["stateNode"]
       10 JUMPIFNOT                        R1 ; [+4]
       11 GETUPVAL                         R4 2
       12 MOVE                             R5 R3
       13 CALL                             R4 1 0
       14 JUMP                             ; [+53]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R5 R2 K1 ["stateNode"]
       18 GETTABLEKS                       R6 R2 K2 ["memoizedProps"]
       20 CALL                             R4 2 0
       21 JUMP                             ; [+46]
       22 GETTABLEKS                       R3 R2 K0 ["tag"]
       24 GETUPVAL                         R4 4
       25 JUMPIFNOTEQ                      R3 R4 ; [+14]
       27 GETTABLEKS                       R3 R2 K1 ["stateNode"]
       29 JUMPIFNOT                        R1 ; [+4]
       30 GETUPVAL                         R4 5
       31 MOVE                             R5 R3
       32 CALL                             R4 1 0
       33 JUMP                             ; [+34]
       34 GETUPVAL                         R4 6
       35 MOVE                             R5 R3
       36 GETTABLEKS                       R6 R2 K2 ["memoizedProps"]
       38 CALL                             R4 2 0
       39 JUMP                             ; [+28]
       40 GETTABLEKS                       R3 R2 K0 ["tag"]
       42 GETUPVAL                         R4 7
       43 JUMPIFEQ                         R3 R4 ; [+6]
       45 GETTABLEKS                       R3 R2 K0 ["tag"]
       47 GETUPVAL                         R4 8
       48 JUMPIFNOTEQ                      R3 R4 ; [+8]
       50 GETTABLEKS                       R3 R2 K3 ["memoizedState"]
       52 JUMPIFEQKNIL                     R3 ; [+4]
       54 JUMPIFEQ                         R2 R0 ; [+2]
       56 JUMP                             ; [+11]
       57 GETTABLEKS                       R3 R2 K4 ["child"]
       59 JUMPIFEQKNIL                     R3 ; [+8]
       61 GETTABLEKS                       R3 R2 K4 ["child"]
       63 SETTABLEKS                       R2 R3 K5 ["return_"]
       65 GETTABLEKS                       R2 R2 K4 ["child"]
       67 JUMP                             ; [+27]
       68 JUMPIFNOTEQ                      R2 R0 ; [+2]
       70 RETURN                           R0 0
       71 GETTABLEKS                       R3 R2 K6 ["sibling"]
       73 JUMPIFNOTEQKNIL                  R3 ; [+13]
       75 GETTABLEKS                       R3 R2 K5 ["return_"]
       77 JUMPIFEQKNIL                     R3 ; [+5]
       79 GETTABLEKS                       R3 R2 K5 ["return_"]
       81 JUMPIFNOTEQ                      R3 R0 ; [+2]
       83 RETURN                           R0 0
       84 GETTABLEKS                       R2 R2 K5 ["return_"]
       86 JUMPBACK                         ; [-16]
       87 GETTABLEKS                       R3 R2 K6 ["sibling"]
       89 GETTABLEKS                       R4 R2 K5 ["return_"]
       91 SETTABLEKS                       R4 R3 K5 ["return_"]
       93 GETTABLEKS                       R2 R2 K6 ["sibling"]
       95 JUMPBACK                         ; [-93]
       96 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 JUMPIFEQKNIL                     R1 ; [+48]
        4 GETTABLEKS                       R2 R0 K1 ["stateNode"]
        6 LOADNIL                          R3
        7 GETTABLEKS                       R4 R0 K2 ["tag"]
        9 GETUPVAL                         R5 0
       10 JUMPIFNOTEQ                      R4 R5 ; [+6]
       12 GETUPVAL                         R4 1
       13 MOVE                             R5 R2
       14 CALL                             R4 1 1
       15 MOVE                             R3 R4
       16 JUMP                             ; [+1]
       17 MOVE                             R3 R2
       18 FASTCALL1                        TYPEOF R1 ; [+3]
       19 MOVE                             R5 R1
       20 GETIMPORT                        R4 K4 [typeof]
       22 CALL                             R4 1 1
       23 JUMPIFNOTEQKS                    R4 K5 ["function"] ; [+5]
       25 MOVE                             R4 R1
       26 MOVE                             R5 R3
       27 CALL                             R4 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 2
       30 JUMPIFNOT                        R4 ; [+18]
       31 FASTCALL1                        TYPEOF R1 ; [+3]
       32 MOVE                             R5 R1
       33 GETIMPORT                        R4 K4 [typeof]
       35 CALL                             R4 1 1
       36 JUMPIFEQKS                       R4 K6 ["table"] ; [+12]
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R4 R5 K7 ["error"]
       41 LOADK                            R5 K8 ["Unexpected ref object provided for %s. Use either a ref-setter function or React.createRef()."]
       42 GETUPVAL                         R7 4
       43 GETTABLEKS                       R8 R0 K10 ["type"]
       45 CALL                             R7 1 1
       46 ORK                              R6 R7 K9 ["instance"]
       47 CALL                             R4 2 0
       48 RETURN                           R0 0
       49 SETTABLEKS                       R3 R1 K11 ["current"]
       51 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 JUMPIFEQKNIL                     R1 ; [+15]
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K2 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K3 ["function"] ; [+5]
       11 MOVE                             R2 R1
       12 LOADNIL                          R3
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K4 ["current"]
       18 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 CALL                             R4 1 0
        3 GETTABLEKS                       R4 R1 K0 ["tag"]
        5 GETUPVAL                         R5 1
        6 JUMPIFEQ                         R4 R5 ; [+21]
        8 GETTABLEKS                       R4 R1 K0 ["tag"]
       10 GETUPVAL                         R5 2
       11 JUMPIFEQ                         R4 R5 ; [+16]
       13 GETTABLEKS                       R4 R1 K0 ["tag"]
       15 GETUPVAL                         R5 3
       16 JUMPIFEQ                         R4 R5 ; [+11]
       18 GETTABLEKS                       R4 R1 K0 ["tag"]
       20 GETUPVAL                         R5 4
       21 JUMPIFEQ                         R4 R5 ; [+6]
       23 GETTABLEKS                       R4 R1 K0 ["tag"]
       25 GETUPVAL                         R5 5
       26 JUMPIFNOTEQ                      R4 R5 ; [+79]
       28 GETTABLEKS                       R4 R1 K1 ["updateQueue"]
       30 JUMPIFEQKNIL                     R4 ; [+74]
       32 GETTABLEKS                       R5 R4 K2 ["lastEffect"]
       34 JUMPIFEQKNIL                     R5 ; [+70]
       36 GETTABLEKS                       R6 R5 K3 ["next"]
       38 MOVE                             R7 R6
       39 GETTABLEKS                       R8 R7 K4 ["destroy"]
       41 JUMPIFEQKNIL                     R8 ; [+58]
       43 GETTABLEKS                       R9 R7 K0 ["tag"]
       45 GETUPVAL                         R10 6
       46 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       48 GETIMPORT                        R8 K7 [bit32.band]
       50 CALL                             R8 2 1
       51 GETUPVAL                         R9 7
       52 JUMPIFEQ                         R8 R9 ; [+47]
       54 GETUPVAL                         R8 8
       55 JUMPIFNOT                        R8 ; [+31]
       56 GETUPVAL                         R8 9
       57 JUMPIFNOT                        R8 ; [+29]
       58 GETTABLEKS                       R9 R1 K8 ["mode"]
       60 GETUPVAL                         R10 10
       61 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       63 GETIMPORT                        R8 K7 [bit32.band]
       65 CALL                             R8 2 1
       66 JUMPIFEQKN                       R8 K9 [0] ; [+20]
       68 GETUPVAL                         R8 11
       69 CALL                             R8 0 0
       70 GETTABLEKS                       R8 R7 K4 ["destroy"]
       72 GETIMPORT                        R9 K11 [xpcall]
       74 MOVE                             R10 R8
       75 GETUPVAL                         R11 12
       76 CALL                             R9 2 2
       77 JUMPIF                           R9 ; [+5]
       78 GETUPVAL                         R11 13
       79 MOVE                             R12 R1
       80 MOVE                             R13 R2
       81 MOVE                             R14 R10
       82 CALL                             R11 3 0
       83 GETUPVAL                         R8 14
       84 MOVE                             R9 R1
       85 CALL                             R8 1 0
       86 JUMP                             ; [+13]
       87 GETTABLEKS                       R8 R7 K4 ["destroy"]
       89 GETIMPORT                        R9 K11 [xpcall]
       91 MOVE                             R10 R8
       92 GETUPVAL                         R11 12
       93 CALL                             R9 2 2
       94 JUMPIF                           R9 ; [+5]
       95 GETUPVAL                         R11 13
       96 MOVE                             R12 R1
       97 MOVE                             R13 R2
       98 MOVE                             R14 R10
       99 CALL                             R11 3 0
      100 GETTABLEKS                       R7 R7 K3 ["next"]
      102 JUMPIFEQ                         R7 R6 ; [+2]
      104 JUMPBACK                         ; [-66]
      105 RETURN                           R0 0
      106 GETTABLEKS                       R4 R1 K0 ["tag"]
      108 GETUPVAL                         R5 15
      109 JUMPIFNOTEQ                      R4 R5 ; [+44]
      111 GETTABLEKS                       R4 R1 K12 ["ref"]
      113 JUMPIFEQKNIL                     R4 ; [+23]
      115 FASTCALL1                        TYPEOF R4 ; [+3]
      116 MOVE                             R6 R4
      117 GETIMPORT                        R5 K14 [typeof]
      119 CALL                             R5 1 1
      120 JUMPIFNOTEQKS                    R5 K15 ["function"] ; [+13]
      122 GETIMPORT                        R5 K11 [xpcall]
      124 MOVE                             R6 R4
      125 GETUPVAL                         R7 12
      126 CALL                             R5 2 2
      127 JUMPIF                           R5 ; [+9]
      128 GETUPVAL                         R7 13
      129 MOVE                             R8 R1
      130 MOVE                             R9 R2
      131 MOVE                             R10 R6
      132 CALL                             R7 3 0
      133 JUMP                             ; [+3]
      134 LOADNIL                          R5
      135 SETTABLEKS                       R5 R4 K16 ["current"]
      137 GETTABLEKS                       R4 R1 K17 ["stateNode"]
      139 GETTABLEKS                       R6 R4 K18 ["componentWillUnmount"]
      141 FASTCALL1                        TYPEOF R6 ; [+2]
      142 GETIMPORT                        R5 K14 [typeof]
      144 CALL                             R5 1 1
      145 JUMPIFNOTEQKS                    R5 K15 ["function"] ; [+7]
      147 GETGLOBAL                        R5 K19 ["safelyCallComponentWillUnmount"]
      149 MOVE                             R6 R1
      150 MOVE                             R7 R4
      151 MOVE                             R8 R2
      152 CALL                             R5 3 0
      153 RETURN                           R0 0
      154 GETTABLEKS                       R4 R1 K0 ["tag"]
      156 GETUPVAL                         R5 16
      157 JUMPIFNOTEQ                      R4 R5 ; [+28]
      159 GETTABLEKS                       R4 R1 K12 ["ref"]
      161 JUMPIFEQKNIL                     R4 ; [+23]
      163 FASTCALL1                        TYPEOF R4 ; [+3]
      164 MOVE                             R6 R4
      165 GETIMPORT                        R5 K14 [typeof]
      167 CALL                             R5 1 1
      168 JUMPIFNOTEQKS                    R5 K15 ["function"] ; [+13]
      170 GETIMPORT                        R5 K11 [xpcall]
      172 MOVE                             R6 R4
      173 GETUPVAL                         R7 12
      174 CALL                             R5 2 2
      175 JUMPIF                           R5 ; [+9]
      176 GETUPVAL                         R7 13
      177 MOVE                             R8 R1
      178 MOVE                             R9 R2
      179 MOVE                             R10 R6
      180 CALL                             R7 3 0
      181 RETURN                           R0 0
      182 LOADNIL                          R5
      183 SETTABLEKS                       R5 R4 K16 ["current"]
      185 RETURN                           R0 0
      186 GETTABLEKS                       R4 R1 K0 ["tag"]
      188 GETUPVAL                         R5 17
      189 JUMPIFNOTEQ                      R4 R5 ; [+16]
      191 GETUPVAL                         R4 18
      192 JUMPIFNOT                        R4 ; [+7]
      193 GETUPVAL                         R4 19
      194 MOVE                             R5 R0
      195 MOVE                             R6 R1
      196 MOVE                             R7 R2
      197 MOVE                             R8 R3
      198 CALL                             R4 4 0
      199 RETURN                           R0 0
      200 GETUPVAL                         R4 20
      201 JUMPIFNOT                        R4 ; [+3]
      202 GETUPVAL                         R4 21
      203 LOADK                            R5 K20 ["emptyPortalContainer"]
      204 CALL                             R4 1 0
      205 RETURN                           R0 0
      206 RETURN                           R0 0

PROTO_28:
        0 MOVE                             R4 R1
        1 GETUPVAL                         R5 0
        2 MOVE                             R6 R0
        3 MOVE                             R7 R4
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 0
        7 GETTABLEKS                       R5 R4 K0 ["child"]
        9 JUMPIFEQKNIL                     R5 ; [+15]
       11 GETUPVAL                         R5 1
       12 JUMPIFNOT                        R5 ; [+5]
       13 GETTABLEKS                       R5 R4 K1 ["tag"]
       15 GETUPVAL                         R6 2
       16 JUMPIFEQ                         R5 R6 ; [+8]
       18 GETTABLEKS                       R5 R4 K0 ["child"]
       20 SETTABLEKS                       R4 R5 K2 ["return_"]
       22 GETTABLEKS                       R4 R4 K0 ["child"]
       24 JUMP                             ; [+27]
       25 JUMPIFNOTEQ                      R4 R1 ; [+2]
       27 RETURN                           R0 0
       28 GETTABLEKS                       R5 R4 K3 ["sibling"]
       30 JUMPIFNOTEQKNIL                  R5 ; [+13]
       32 GETTABLEKS                       R5 R4 K2 ["return_"]
       34 JUMPIFEQKNIL                     R5 ; [+5]
       36 GETTABLEKS                       R5 R4 K2 ["return_"]
       38 JUMPIFNOTEQ                      R5 R1 ; [+2]
       40 RETURN                           R0 0
       41 GETTABLEKS                       R4 R4 K2 ["return_"]
       43 JUMPBACK                         ; [-16]
       44 GETTABLEKS                       R5 R4 K3 ["sibling"]
       46 GETTABLEKS                       R6 R4 K2 ["return_"]
       48 SETTABLEKS                       R6 R5 K2 ["return_"]
       50 GETTABLEKS                       R4 R4 K3 ["sibling"]
       52 JUMPBACK                         ; [-52]
       53 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["alternate"]
        2 JUMPIFEQKNIL                     R1 ; [+7]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["return_"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R0 K0 ["alternate"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R0 K1 ["return_"]
       13 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["return_"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R1 K0 ["return_"]
       11 JUMPBACK                         ; [-10]
       12 GETIMPORT                        R2 K2 [error]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K3 ["new"]
       17 LOADK                            R4 K4 ["Expected to find a host parent. This error is likely caused by a bug in React. Please file an issue."]
       18 CALL                             R3 1 -1
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_31:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["tag"]
        3 GETUPVAL                         R3 0
        4 JUMPIFEQ                         R2 R3 ; [+14]
        6 LOADB                            R1 1
        7 GETTABLEKS                       R2 R0 K0 ["tag"]
        9 GETUPVAL                         R3 1
       10 JUMPIFEQ                         R2 R3 ; [+8]
       12 GETTABLEKS                       R2 R0 K0 ["tag"]
       14 GETUPVAL                         R3 2
       15 JUMPIFEQ                         R2 R3 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_32:
        0 MOVE                             R1 R0
        1 LOADB                            R2 0
        2 GETTABLEKS                       R3 R1 K0 ["sibling"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+15]
        6 GETTABLEKS                       R3 R1 K1 ["return_"]
        8 JUMPIFEQKNIL                     R3 ; [+6]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R4 R1 K1 ["return_"]
       13 CALL                             R3 1 1
       14 JUMPIFNOT                        R3 ; [+2]
       15 LOADNIL                          R3
       16 RETURN                           R3 1
       17 GETTABLEKS                       R1 R1 K1 ["return_"]
       19 JUMPBACK                         ; [-18]
       20 GETTABLEKS                       R3 R1 K0 ["sibling"]
       22 GETTABLEKS                       R4 R1 K1 ["return_"]
       24 SETTABLEKS                       R4 R3 K1 ["return_"]
       26 GETTABLEKS                       R1 R1 K0 ["sibling"]
       28 GETTABLEKS                       R3 R1 K2 ["tag"]
       30 GETUPVAL                         R4 1
       31 JUMPIFEQ                         R3 R4 ; [+41]
       33 GETTABLEKS                       R3 R1 K2 ["tag"]
       35 GETUPVAL                         R4 2
       36 JUMPIFEQ                         R3 R4 ; [+36]
       38 GETTABLEKS                       R3 R1 K2 ["tag"]
       40 GETUPVAL                         R4 3
       41 JUMPIFEQ                         R3 R4 ; [+31]
       43 GETTABLEKS                       R4 R1 K3 ["flags"]
       45 GETUPVAL                         R5 4
       46 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       48 GETIMPORT                        R3 K6 [bit32.band]
       50 CALL                             R3 2 1
       51 JUMPIFEQKN                       R3 K7 [0] ; [+3]
       53 LOADB                            R2 1
       54 JUMP                             ; [+18]
       55 GETTABLEKS                       R3 R1 K8 ["child"]
       57 JUMPIFEQKNIL                     R3 ; [+6]
       59 GETTABLEKS                       R3 R1 K2 ["tag"]
       61 GETUPVAL                         R4 5
       62 JUMPIFNOTEQ                      R3 R4 ; [+3]
       64 LOADB                            R2 1
       65 JUMP                             ; [+7]
       66 GETTABLEKS                       R3 R1 K8 ["child"]
       68 SETTABLEKS                       R1 R3 K1 ["return_"]
       70 GETTABLEKS                       R1 R1 K8 ["child"]
       72 JUMPBACK                         ; [-45]
       73 JUMPIF                           R2 ; [+13]
       74 GETTABLEKS                       R4 R1 K3 ["flags"]
       76 GETUPVAL                         R5 4
       77 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       79 GETIMPORT                        R3 K6 [bit32.band]
       81 CALL                             R3 2 1
       82 JUMPIFNOTEQKN                    R3 K7 [0] ; [+4]
       84 GETTABLEKS                       R3 R1 K9 ["stateNode"]
       86 RETURN                           R3 1
       87 JUMPBACK                         ; [-87]
       88 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 GETTABLEKS                       R4 R1 K0 ["stateNode"]
       10 GETTABLEKS                       R5 R1 K1 ["tag"]
       12 GETUPVAL                         R6 2
       13 JUMPIFNOTEQ                      R5 R6 ; [+4]
       15 MOVE                             R2 R4
       16 LOADB                            R3 0
       17 JUMP                             ; [+22]
       18 GETTABLEKS                       R5 R1 K1 ["tag"]
       20 GETUPVAL                         R6 3
       21 JUMPIFNOTEQ                      R5 R6 ; [+5]
       23 GETTABLEKS                       R2 R4 K2 ["containerInfo"]
       25 LOADB                            R3 1
       26 JUMP                             ; [+13]
       27 GETTABLEKS                       R5 R1 K1 ["tag"]
       29 GETUPVAL                         R6 4
       30 JUMPIFNOTEQ                      R5 R6 ; [+5]
       32 GETTABLEKS                       R2 R4 K2 ["containerInfo"]
       34 LOADB                            R3 1
       35 JUMP                             ; [+4]
       36 GETUPVAL                         R5 5
       37 LOADB                            R6 0
       38 LOADK                            R7 K3 ["Invalid host parent fiber. This error is likely caused by a bug in React. Please file an issue."]
       39 CALL                             R5 2 0
       40 GETTABLEKS                       R6 R1 K4 ["flags"]
       42 GETUPVAL                         R7 6
       43 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       45 GETIMPORT                        R5 K7 [bit32.band]
       47 CALL                             R5 2 1
       48 JUMPIFEQKN                       R5 K8 [0] ; [+18]
       50 GETUPVAL                         R5 7
       51 MOVE                             R6 R2
       52 CALL                             R5 1 0
       53 GETTABLEKS                       R6 R1 K4 ["flags"]
       55 GETUPVAL                         R8 6
       56 FASTCALL1                        BIT32_BNOT R8 ; [+2]
       57 GETIMPORT                        R7 K10 [bit32.bnot]
       59 CALL                             R7 1 1
       60 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       62 GETIMPORT                        R5 K7 [bit32.band]
       64 CALL                             R5 2 1
       65 SETTABLEKS                       R5 R1 K4 ["flags"]
       67 GETUPVAL                         R5 8
       68 MOVE                             R6 R0
       69 CALL                             R5 1 1
       70 JUMPIFNOT                        R3 ; [+6]
       71 GETUPVAL                         R6 9
       72 MOVE                             R7 R0
       73 MOVE                             R8 R5
       74 MOVE                             R9 R2
       75 CALL                             R6 3 0
       76 RETURN                           R0 0
       77 GETUPVAL                         R6 10
       78 MOVE                             R7 R0
       79 MOVE                             R8 R5
       80 MOVE                             R9 R2
       81 CALL                             R6 3 0
       82 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R3 R0 K0 ["tag"]
        2 LOADB                            R4 1
        3 GETUPVAL                         R5 0
        4 JUMPIFEQ                         R3 R5 ; [+6]
        6 GETUPVAL                         R5 1
        7 JUMPIFEQ                         R3 R5 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 JUMPIFNOT                        R4 ; [+14]
       12 GETTABLEKS                       R5 R0 K1 ["stateNode"]
       14 JUMPIFNOT                        R1 ; [+6]
       15 GETUPVAL                         R6 2
       16 MOVE                             R7 R2
       17 MOVE                             R8 R5
       18 MOVE                             R9 R1
       19 CALL                             R6 3 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R6 3
       22 MOVE                             R7 R2
       23 MOVE                             R8 R5
       24 CALL                             R6 2 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R5 4
       27 JUMPIFNOTEQ                      R3 R5 ; [+2]
       29 RETURN                           R0 0
       30 GETTABLEKS                       R5 R0 K2 ["child"]
       32 JUMPIFEQKNIL                     R5 ; [+18]
       34 GETUPVAL                         R6 5
       35 MOVE                             R7 R5
       36 MOVE                             R8 R1
       37 MOVE                             R9 R2
       38 CALL                             R6 3 0
       39 GETTABLEKS                       R6 R5 K3 ["sibling"]
       41 JUMPIFEQKNIL                     R6 ; [+9]
       43 GETUPVAL                         R7 5
       44 MOVE                             R8 R6
       45 MOVE                             R9 R1
       46 MOVE                             R10 R2
       47 CALL                             R7 3 0
       48 GETTABLEKS                       R6 R6 K3 ["sibling"]
       50 JUMPBACK                         ; [-10]
       51 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R3 R0 K0 ["tag"]
        2 LOADB                            R4 1
        3 GETUPVAL                         R5 0
        4 JUMPIFEQ                         R3 R5 ; [+6]
        6 GETUPVAL                         R5 1
        7 JUMPIFEQ                         R3 R5 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 JUMPIFNOT                        R4 ; [+14]
       12 GETTABLEKS                       R5 R0 K1 ["stateNode"]
       14 JUMPIFNOT                        R1 ; [+6]
       15 GETUPVAL                         R6 2
       16 MOVE                             R7 R2
       17 MOVE                             R8 R5
       18 MOVE                             R9 R1
       19 CALL                             R6 3 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R6 3
       22 MOVE                             R7 R2
       23 MOVE                             R8 R5
       24 CALL                             R6 2 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R5 4
       27 JUMPIFNOTEQ                      R3 R5 ; [+2]
       29 RETURN                           R0 0
       30 GETTABLEKS                       R5 R0 K2 ["child"]
       32 JUMPIFEQKNIL                     R5 ; [+18]
       34 GETUPVAL                         R6 5
       35 MOVE                             R7 R5
       36 MOVE                             R8 R1
       37 MOVE                             R9 R2
       38 CALL                             R6 3 0
       39 GETTABLEKS                       R6 R5 K3 ["sibling"]
       41 JUMPIFEQKNIL                     R6 ; [+9]
       43 GETUPVAL                         R7 5
       44 MOVE                             R8 R6
       45 MOVE                             R9 R1
       46 MOVE                             R10 R2
       47 CALL                             R7 3 0
       48 GETTABLEKS                       R6 R6 K3 ["sibling"]
       50 JUMPBACK                         ; [-10]
       51 RETURN                           R0 0

PROTO_36:
        0 MOVE                             R4 R1
        1 LOADB                            R5 0
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 JUMPIF                           R5 ; [+44]
        5 GETTABLEKS                       R8 R4 K0 ["return_"]
        7 JUMPIFNOTEQKNIL                  R8 ; [+9]
        9 GETIMPORT                        R9 K2 [error]
       11 GETUPVAL                         R11 0
       12 GETTABLEKS                       R10 R11 K3 ["new"]
       14 LOADK                            R11 K4 ["Expected to find a host parent. This error is likely caused by a bug in React. Please file an issue."]
       15 CALL                             R10 1 -1
       16 CALL                             R9 -1 0
       17 GETTABLEKS                       R9 R8 K5 ["stateNode"]
       19 GETTABLEKS                       R10 R8 K6 ["tag"]
       21 GETUPVAL                         R11 1
       22 JUMPIFNOTEQ                      R10 R11 ; [+4]
       24 MOVE                             R6 R9
       25 LOADB                            R7 0
       26 JUMP                             ; [+21]
       27 GETTABLEKS                       R10 R8 K6 ["tag"]
       29 GETUPVAL                         R11 2
       30 JUMPIFNOTEQ                      R10 R11 ; [+5]
       32 GETTABLEKS                       R6 R9 K7 ["containerInfo"]
       34 LOADB                            R7 1
       35 JUMP                             ; [+12]
       36 GETTABLEKS                       R10 R8 K6 ["tag"]
       38 GETUPVAL                         R11 3
       39 JUMPIFNOTEQ                      R10 R11 ; [+5]
       41 GETTABLEKS                       R6 R9 K7 ["containerInfo"]
       43 LOADB                            R7 1
       44 JUMP                             ; [+3]
       45 GETTABLEKS                       R8 R8 K0 ["return_"]
       47 JUMPBACK                         ; [-41]
       48 LOADB                            R5 1
       49 GETTABLEKS                       R8 R4 K6 ["tag"]
       51 GETUPVAL                         R9 1
       52 JUMPIFEQ                         R8 R9 ; [+6]
       54 GETTABLEKS                       R8 R4 K6 ["tag"]
       56 GETUPVAL                         R9 4
       57 JUMPIFNOTEQ                      R8 R9 ; [+20]
       59 GETUPVAL                         R8 5
       60 MOVE                             R9 R0
       61 MOVE                             R10 R4
       62 MOVE                             R11 R2
       63 MOVE                             R12 R3
       64 CALL                             R8 4 0
       65 JUMPIFNOT                        R7 ; [+6]
       66 GETUPVAL                         R8 6
       67 MOVE                             R9 R6
       68 GETTABLEKS                       R10 R4 K5 ["stateNode"]
       70 CALL                             R8 2 0
       71 JUMP                             ; [+45]
       72 GETUPVAL                         R8 7
       73 MOVE                             R9 R6
       74 GETTABLEKS                       R10 R4 K5 ["stateNode"]
       76 CALL                             R8 2 0
       77 JUMP                             ; [+39]
       78 GETTABLEKS                       R8 R4 K6 ["tag"]
       80 GETUPVAL                         R9 3
       81 JUMPIFNOTEQ                      R8 R9 ; [+18]
       83 GETTABLEKS                       R8 R4 K8 ["child"]
       85 JUMPIFEQKNIL                     R8 ; [+31]
       87 GETTABLEKS                       R8 R4 K5 ["stateNode"]
       89 GETTABLEKS                       R6 R8 K7 ["containerInfo"]
       91 LOADB                            R7 1
       92 GETTABLEKS                       R8 R4 K8 ["child"]
       94 SETTABLEKS                       R4 R8 K0 ["return_"]
       96 GETTABLEKS                       R4 R4 K8 ["child"]
       98 JUMP                             ; [+51]
       99 JUMP                             ; [+17]
      100 GETUPVAL                         R8 8
      101 MOVE                             R9 R0
      102 MOVE                             R10 R4
      103 MOVE                             R11 R2
      104 MOVE                             R12 R3
      105 CALL                             R8 4 0
      106 GETTABLEKS                       R8 R4 K8 ["child"]
      108 JUMPIFEQKNIL                     R8 ; [+8]
      110 GETTABLEKS                       R8 R4 K8 ["child"]
      112 SETTABLEKS                       R4 R8 K0 ["return_"]
      114 GETTABLEKS                       R4 R4 K8 ["child"]
      116 JUMP                             ; [+33]
      117 JUMPIFNOTEQ                      R4 R1 ; [+2]
      119 RETURN                           R0 0
      120 GETTABLEKS                       R8 R4 K9 ["sibling"]
      122 JUMPIFNOTEQKNIL                  R8 ; [+19]
      124 GETTABLEKS                       R8 R4 K0 ["return_"]
      126 JUMPIFEQKNIL                     R8 ; [+5]
      128 GETTABLEKS                       R8 R4 K0 ["return_"]
      130 JUMPIFNOTEQ                      R8 R1 ; [+2]
      132 RETURN                           R0 0
      133 GETTABLEKS                       R4 R4 K0 ["return_"]
      135 GETTABLEKS                       R8 R4 K6 ["tag"]
      137 GETUPVAL                         R9 3
      138 JUMPIFNOTEQ                      R8 R9 ; [+2]
      140 LOADB                            R5 0
      141 JUMPBACK                         ; [-22]
      142 GETTABLEKS                       R8 R4 K9 ["sibling"]
      144 GETTABLEKS                       R9 R4 K0 ["return_"]
      146 SETTABLEKS                       R9 R8 K0 ["return_"]
      148 GETTABLEKS                       R4 R4 K9 ["sibling"]
      150 JUMPBACK                         ; [-147]
      151 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 CALL                             R4 4 0
        6 GETTABLEKS                       R4 R1 K0 ["alternate"]
        8 GETTABLEKS                       R5 R1 K0 ["alternate"]
       10 JUMPIFEQKNIL                     R5 ; [+7]
       12 LOADNIL                          R6
       13 SETTABLEKS                       R6 R5 K1 ["return_"]
       15 LOADNIL                          R6
       16 SETTABLEKS                       R6 R1 K0 ["alternate"]
       18 LOADNIL                          R6
       19 SETTABLEKS                       R6 R1 K1 ["return_"]
       21 JUMPIFEQKNIL                     R4 ; [+14]
       23 GETTABLEKS                       R5 R4 K0 ["alternate"]
       25 JUMPIFEQKNIL                     R5 ; [+7]
       27 LOADNIL                          R6
       28 SETTABLEKS                       R6 R5 K1 ["return_"]
       30 LOADNIL                          R6
       31 SETTABLEKS                       R6 R4 K0 ["alternate"]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R4 K1 ["return_"]
       36 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETUPVAL                         R3 3
        5 FASTCALL2                        BIT32_BOR R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [bit32.bor]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 4
       11 GETUPVAL                         R4 4
       12 GETTABLEKS                       R3 R4 K3 ["return_"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R2 R1 K0 ["tag"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+21]
        5 GETTABLEKS                       R2 R1 K0 ["tag"]
        7 GETUPVAL                         R3 1
        8 JUMPIFEQ                         R2 R3 ; [+16]
       10 GETTABLEKS                       R2 R1 K0 ["tag"]
       12 GETUPVAL                         R3 2
       13 JUMPIFEQ                         R2 R3 ; [+11]
       15 GETTABLEKS                       R2 R1 K0 ["tag"]
       17 GETUPVAL                         R3 3
       18 JUMPIFEQ                         R2 R3 ; [+6]
       20 GETTABLEKS                       R2 R1 K0 ["tag"]
       22 GETUPVAL                         R3 4
       23 JUMPIFNOTEQ                      R2 R3 ; [+47]
       25 GETUPVAL                         R2 5
       26 JUMPIFNOT                        R2 ; [+31]
       27 GETUPVAL                         R2 6
       28 JUMPIFNOT                        R2 ; [+29]
       29 GETTABLEKS                       R3 R1 K1 ["mode"]
       31 GETUPVAL                         R4 7
       32 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       34 GETIMPORT                        R2 K4 [bit32.band]
       36 CALL                             R2 2 1
       37 JUMPIFEQKN                       R2 K5 [0] ; [+20]
       39 GETIMPORT                        R2 K7 [xpcall]
       41 NEWCLOSURE                       R3 P0
       42 CAPTURE                          UPVAL U8
       43 CAPTURE                          UPVAL U9
       44 CAPTURE                          UPVAL U10
       45 CAPTURE                          UPVAL U11
       46 CAPTURE                          VAL R1
       47 GETUPVAL                         R4 12
       48 CALL                             R2 2 2
       49 GETUPVAL                         R4 13
       50 MOVE                             R5 R1
       51 CALL                             R4 1 0
       52 JUMPIF                           R2 ; [+17]
       53 GETIMPORT                        R4 K9 [error]
       55 MOVE                             R5 R3
       56 CALL                             R4 1 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R2 9
       59 GETUPVAL                         R4 10
       60 GETUPVAL                         R5 11
       61 FASTCALL2                        BIT32_BOR R4 R5 ; [+3]
       63 GETIMPORT                        R3 K11 [bit32.bor]
       65 CALL                             R3 2 1
       66 MOVE                             R4 R1
       67 GETTABLEKS                       R5 R1 K12 ["return_"]
       69 CALL                             R2 3 0
       70 RETURN                           R0 0
       71 GETTABLEKS                       R2 R1 K0 ["tag"]
       73 GETUPVAL                         R3 14
       74 JUMPIFNOTEQ                      R2 R3 ; [+2]
       76 RETURN                           R0 0
       77 GETTABLEKS                       R2 R1 K0 ["tag"]
       79 GETUPVAL                         R3 15
       80 JUMPIFNOTEQ                      R2 R3 ; [+31]
       82 GETTABLEKS                       R2 R1 K13 ["stateNode"]
       84 JUMPIFEQKNIL                     R2 ; [+26]
       86 GETTABLEKS                       R3 R1 K14 ["memoizedProps"]
       88 LOADNIL                          R4
       89 JUMPIFNOT                        R0 ; [+3]
       90 GETTABLEKS                       R4 R0 K14 ["memoizedProps"]
       92 JUMP                             ; [+1]
       93 MOVE                             R4 R3
       94 GETTABLEKS                       R5 R1 K15 ["type"]
       96 GETTABLEKS                       R6 R1 K16 ["updateQueue"]
       98 LOADNIL                          R7
       99 SETTABLEKS                       R7 R1 K16 ["updateQueue"]
      101 JUMPIFEQKNIL                     R6 ; [+9]
      103 GETUPVAL                         R7 16
      104 MOVE                             R8 R2
      105 MOVE                             R9 R6
      106 MOVE                             R10 R5
      107 MOVE                             R11 R4
      108 MOVE                             R12 R3
      109 MOVE                             R13 R1
      110 CALL                             R7 6 0
      111 RETURN                           R0 0
      112 GETTABLEKS                       R2 R1 K0 ["tag"]
      114 GETUPVAL                         R3 17
      115 JUMPIFNOTEQ                      R2 R3 ; [+26]
      117 GETUPVAL                         R2 18
      118 GETTABLEKS                       R4 R1 K13 ["stateNode"]
      120 JUMPIFNOTEQKNIL                  R4 ; [+2]
      122 LOADB                            R3 0 +1
      123 LOADB                            R3 1
      124 LOADK                            R4 K17 ["This should have a text node initialized. This error is likely caused by a bug in React. Please file an issue."]
      125 CALL                             R2 2 0
      126 GETTABLEKS                       R2 R1 K13 ["stateNode"]
      128 GETTABLEKS                       R3 R1 K14 ["memoizedProps"]
      130 LOADNIL                          R4
      131 JUMPIFEQKNIL                     R0 ; [+4]
      133 GETTABLEKS                       R4 R0 K14 ["memoizedProps"]
      135 MOVE                             R4 R3
      136 GETUPVAL                         R5 19
      137 MOVE                             R6 R2
      138 MOVE                             R7 R4
      139 MOVE                             R8 R3
      140 CALL                             R5 3 0
      141 RETURN                           R0 0
      142 GETTABLEKS                       R2 R1 K0 ["tag"]
      144 GETUPVAL                         R3 20
      145 JUMPIFNOTEQ                      R2 R3 ; [+15]
      147 GETUPVAL                         R2 21
      148 JUMPIFNOT                        R2 ; [+11]
      149 GETTABLEKS                       R2 R1 K13 ["stateNode"]
      151 GETTABLEKS                       R3 R2 K18 ["hydrate"]
      153 JUMPIFNOT                        R3 ; [+6]
      154 LOADB                            R3 0
      155 SETTABLEKS                       R3 R2 K18 ["hydrate"]
      157 GETUPVAL                         R3 22
      158 LOADK                            R4 K19 ["commitWork: HostRoot: commitHydratedContainer"]
      159 CALL                             R3 1 0
      160 RETURN                           R0 0
      161 GETTABLEKS                       R2 R1 K0 ["tag"]
      163 GETUPVAL                         R3 23
      164 JUMPIFNOTEQ                      R2 R3 ; [+2]
      166 RETURN                           R0 0
      167 GETTABLEKS                       R2 R1 K0 ["tag"]
      169 GETUPVAL                         R3 24
      170 JUMPIFNOTEQ                      R2 R3 ; [+10]
      172 GETGLOBAL                        R2 K20 ["commitSuspenseComponent"]
      174 MOVE                             R3 R1
      175 CALL                             R2 1 0
      176 GETGLOBAL                        R2 K21 ["attachSuspenseRetryListeners"]
      178 MOVE                             R3 R1
      179 CALL                             R2 1 0
      180 RETURN                           R0 0
      181 GETTABLEKS                       R2 R1 K0 ["tag"]
      183 GETUPVAL                         R3 25
      184 JUMPIFNOTEQ                      R2 R3 ; [+5]
      186 GETUPVAL                         R2 22
      187 LOADK                            R3 K22 ["commitWork: SuspenseListComponent"]
      188 CALL                             R2 1 0
      189 JUMP                             ; [+27]
      190 GETTABLEKS                       R2 R1 K0 ["tag"]
      192 GETUPVAL                         R3 26
      193 JUMPIFNOTEQ                      R2 R3 ; [+2]
      195 RETURN                           R0 0
      196 GETTABLEKS                       R2 R1 K0 ["tag"]
      198 GETUPVAL                         R3 27
      199 JUMPIFEQ                         R2 R3 ; [+6]
      201 GETTABLEKS                       R2 R1 K0 ["tag"]
      203 GETUPVAL                         R3 28
      204 JUMPIFNOTEQ                      R2 R3 ; [+12]
      206 GETTABLEKS                       R2 R1 K23 ["memoizedState"]
      208 JUMPIFNOTEQKNIL                  R2 ; [+2]
      210 LOADB                            R3 0 +1
      211 LOADB                            R3 1
      212 GETUPVAL                         R4 29
      213 MOVE                             R5 R1
      214 MOVE                             R6 R3
      215 CALL                             R4 2 0
      216 RETURN                           R0 0
      217 GETUPVAL                         R2 18
      218 LOADB                            R3 0
      219 LOADK                            R4 K24 ["This unit of work tag should not have side-effects. This error is likely caused by a bug in React. Please file an issue."]
      220 CALL                             R2 2 0
      221 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["memoizedState"]
        2 JUMPIFEQKNIL                     R1 ; [+25]
        4 GETUPVAL                         R2 0
        5 JUMPIF                           R2 ; [+10]
        6 GETIMPORT                        R2 K2 [require]
        8 GETIMPORT                        R5 K5 [script]
       10 GETTABLEKS                       R4 R5 K6 ["Parent"]
       12 GETTABLEKS                       R3 R4 K3 ["ReactFiberWorkLoop.new"]
       14 CALL                             R2 1 1
       15 SETUPVAL                         R2 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K7 ["markCommitTimeOfFallback"]
       19 CALL                             R2 0 0
       20 GETUPVAL                         R2 1
       21 JUMPIFNOT                        R2 ; [+6]
       22 GETTABLEKS                       R2 R0 K8 ["child"]
       24 GETUPVAL                         R3 2
       25 MOVE                             R4 R2
       26 LOADB                            R5 1
       27 CALL                             R3 2 0
       28 GETUPVAL                         R2 3
       29 JUMPIFNOT                        R2 ; [+38]
       30 JUMPIFEQKNIL                     R1 ; [+37]
       32 GETTABLEKS                       R3 R0 K9 ["memoizedProps"]
       34 GETTABLEKS                       R2 R3 K10 ["suspenseCallback"]
       36 FASTCALL1                        TYPEOF R2 ; [+3]
       37 MOVE                             R4 R2
       38 GETIMPORT                        R3 K12 [typeof]
       40 CALL                             R3 1 1
       41 JUMPIFNOTEQKS                    R3 K13 ["function"] ; [+12]
       43 GETTABLEKS                       R3 R0 K14 ["updateQueue"]
       45 JUMPIFEQKNIL                     R3 ; [+22]
       47 MOVE                             R4 R2
       48 GETIMPORT                        R5 K17 [table.clone]
       50 MOVE                             R6 R3
       51 CALL                             R5 1 -1
       52 CALL                             R4 -1 0
       53 RETURN                           R0 0
       54 GETUPVAL                         R3 4
       55 JUMPIFNOT                        R3 ; [+12]
       56 JUMPIFEQKNIL                     R2 ; [+11]
       58 GETUPVAL                         R4 5
       59 GETTABLEKS                       R3 R4 K18 ["error"]
       61 LOADK                            R4 K19 ["Unexpected type for suspenseCallback: %s"]
       62 FASTCALL1                        TOSTRING R2 ; [+3]
       63 MOVE                             R6 R2
       64 GETIMPORT                        R5 K21 [tostring]
       66 CALL                             R5 1 1
       67 CALL                             R3 2 0
       68 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R2 R1 K0 ["memoizedState"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+28]
        7 GETTABLEKS                       R3 R1 K1 ["alternate"]
        9 JUMPIFEQKNIL                     R3 ; [+24]
       11 GETTABLEKS                       R4 R3 K0 ["memoizedState"]
       13 JUMPIFEQKNIL                     R4 ; [+20]
       15 GETTABLEKS                       R5 R4 K2 ["dehydrated"]
       17 JUMPIFEQKNIL                     R5 ; [+16]
       19 GETUPVAL                         R6 1
       20 MOVE                             R7 R5
       21 CALL                             R6 1 0
       22 GETUPVAL                         R6 2
       23 JUMPIFNOT                        R6 ; [+10]
       24 GETTABLEKS                       R6 R0 K3 ["hydrationCallbacks"]
       26 JUMPIFEQKNIL                     R6 ; [+7]
       28 GETTABLEKS                       R7 R6 K4 ["onHydrated"]
       30 JUMPIFNOT                        R7 ; [+3]
       31 MOVE                             R8 R7
       32 MOVE                             R9 R5
       33 CALL                             R8 1 0
       34 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["updateQueue"]
        2 JUMPIFEQKNIL                     R1 ; [+53]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R0 K0 ["updateQueue"]
        7 GETTABLEKS                       R2 R0 K1 ["stateNode"]
        9 JUMPIFNOTEQKNIL                  R2 ; [+9]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K2 ["new"]
       14 CALL                             R3 0 1
       15 SETTABLEKS                       R3 R0 K1 ["stateNode"]
       17 GETTABLEKS                       R2 R0 K1 ["stateNode"]
       19 MOVE                             R3 R1
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R6
       27 MOVE                             R11 R6
       28 NAMECALL                         R9 R2 K3 ["has"]
       30 CALL                             R9 2 1
       31 JUMPIF                           R9 ; [+21]
       32 GETUPVAL                         R9 2
       33 JUMPIFNOT                        R9 ; [+8]
       34 GETTABLEKS                       R9 R6 K4 ["__reactDoNotTraceInteractions"]
       36 JUMPIFEQKB                       R9 TRUE ; [+5]
       38 GETUPVAL                         R9 3
       39 MOVE                             R10 R8
       40 CALL                             R9 1 1
       41 MOVE                             R8 R9
       42 MOVE                             R11 R6
       43 NAMECALL                         R9 R2 K5 ["add"]
       45 CALL                             R9 2 0
       46 NEWCLOSURE                       R11 P1
       47 CAPTURE                          REF R8
       48 NEWCLOSURE                       R12 P2
       49 CAPTURE                          REF R8
       50 NAMECALL                         R9 R6 K6 ["andThen"]
       52 CALL                             R9 3 0
       53 CLOSEUPVALS                      R8
       54 FORGLOOP                         R3 2 ; [-32]
       56 RETURN                           R0 0

PROTO_46:
        0 JUMPIFEQKNIL                     R0 ; [+21]
        2 GETTABLEKS                       R2 R0 K0 ["memoizedState"]
        4 JUMPIFEQKNIL                     R2 ; [+5]
        6 GETTABLEKS                       R3 R2 K1 ["dehydrated"]
        8 JUMPIFEQKNIL                     R3 ; [+13]
       10 GETTABLEKS                       R3 R1 K0 ["memoizedState"]
       12 LOADB                            R4 0
       13 JUMPIFEQKNIL                     R3 ; [+7]
       15 GETTABLEKS                       R5 R3 K1 ["dehydrated"]
       17 JUMPIFEQKNIL                     R5 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1
       22 LOADB                            R2 0
       23 RETURN                           R2 1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K0 ["stateNode"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R1 R0 K0 ["tag"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+16]
        5 GETTABLEKS                       R1 R0 K0 ["tag"]
        7 GETUPVAL                         R2 1
        8 JUMPIFEQ                         R1 R2 ; [+11]
       10 GETTABLEKS                       R1 R0 K0 ["tag"]
       12 GETUPVAL                         R2 2
       13 JUMPIFEQ                         R1 R2 ; [+6]
       15 GETTABLEKS                       R1 R0 K0 ["tag"]
       17 GETUPVAL                         R2 3
       18 JUMPIFNOTEQ                      R1 R2 ; [+45]
       20 GETUPVAL                         R1 4
       21 JUMPIFNOT                        R1 ; [+30]
       22 GETUPVAL                         R1 5
       23 JUMPIFNOT                        R1 ; [+28]
       24 GETTABLEKS                       R2 R0 K1 ["mode"]
       26 GETUPVAL                         R3 6
       27 FASTCALL2                        BIT32_BAND R2 R3 ; [+3]
       29 GETIMPORT                        R1 K4 [bit32.band]
       31 CALL                             R1 2 1
       32 JUMPIFEQKN                       R1 K5 [0] ; [+19]
       34 GETUPVAL                         R1 7
       35 CALL                             R1 0 0
       36 GETUPVAL                         R1 8
       37 GETUPVAL                         R3 9
       38 GETUPVAL                         R4 10
       39 FASTCALL2                        BIT32_BOR R3 R4 ; [+3]
       41 GETIMPORT                        R2 K7 [bit32.bor]
       43 CALL                             R2 2 1
       44 MOVE                             R3 R0
       45 GETTABLEKS                       R4 R0 K8 ["return_"]
       47 CALL                             R1 3 0
       48 GETUPVAL                         R1 11
       49 MOVE                             R2 R0
       50 CALL                             R1 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R1 8
       53 GETUPVAL                         R3 9
       54 GETUPVAL                         R4 10
       55 FASTCALL2                        BIT32_BOR R3 R4 ; [+3]
       57 GETIMPORT                        R2 K7 [bit32.bor]
       59 CALL                             R2 2 1
       60 MOVE                             R3 R0
       61 GETTABLEKS                       R4 R0 K8 ["return_"]
       63 CALL                             R1 3 0
       64 RETURN                           R0 0

PROTO_49:
        0 GETTABLEKS                       R2 R0 K0 ["tag"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+16]
        5 GETTABLEKS                       R2 R0 K0 ["tag"]
        7 GETUPVAL                         R3 1
        8 JUMPIFEQ                         R2 R3 ; [+11]
       10 GETTABLEKS                       R2 R0 K0 ["tag"]
       12 GETUPVAL                         R3 2
       13 JUMPIFEQ                         R2 R3 ; [+6]
       15 GETTABLEKS                       R2 R0 K0 ["tag"]
       17 GETUPVAL                         R3 3
       18 JUMPIFNOTEQ                      R2 R3 ; [+31]
       20 GETUPVAL                         R2 4
       21 JUMPIFNOT                        R2 ; [+23]
       22 GETUPVAL                         R2 5
       23 JUMPIFNOT                        R2 ; [+21]
       24 GETTABLEKS                       R3 R0 K1 ["mode"]
       26 GETUPVAL                         R4 6
       27 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       29 GETIMPORT                        R2 K4 [bit32.band]
       31 CALL                             R2 2 1
       32 JUMPIFEQKN                       R2 K5 [0] ; [+12]
       34 GETUPVAL                         R2 7
       35 CALL                             R2 0 0
       36 GETUPVAL                         R2 8
       37 GETUPVAL                         R3 9
       38 MOVE                             R4 R0
       39 MOVE                             R5 R1
       40 CALL                             R2 3 0
       41 GETUPVAL                         R2 10
       42 MOVE                             R3 R0
       43 CALL                             R2 1 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R2 8
       46 GETUPVAL                         R3 9
       47 MOVE                             R4 R0
       48 MOVE                             R5 R1
       49 CALL                             R2 3 0
       50 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R2 R1 K0 ["tag"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+16]
        5 GETTABLEKS                       R2 R1 K0 ["tag"]
        7 GETUPVAL                         R3 1
        8 JUMPIFEQ                         R2 R3 ; [+11]
       10 GETTABLEKS                       R2 R1 K0 ["tag"]
       12 GETUPVAL                         R3 2
       13 JUMPIFEQ                         R2 R3 ; [+6]
       15 GETTABLEKS                       R2 R1 K0 ["tag"]
       17 GETUPVAL                         R3 3
       18 JUMPIFNOTEQ                      R2 R3 ; [+50]
       20 GETUPVAL                         R2 4
       21 JUMPIFNOT                        R2 ; [+36]
       22 GETUPVAL                         R2 5
       23 JUMPIFNOT                        R2 ; [+34]
       24 GETTABLEKS                       R3 R1 K1 ["mode"]
       26 GETUPVAL                         R4 6
       27 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       29 GETIMPORT                        R2 K4 [bit32.band]
       31 CALL                             R2 2 1
       32 JUMPIFEQKN                       R2 K5 [0] ; [+25]
       34 GETUPVAL                         R2 7
       35 CALL                             R2 0 0
       36 GETIMPORT                        R2 K7 [xpcall]
       38 GETUPVAL                         R3 8
       39 GETUPVAL                         R4 9
       40 GETUPVAL                         R6 10
       41 GETUPVAL                         R7 11
       42 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       44 GETIMPORT                        R5 K9 [bit32.bor]
       46 CALL                             R5 2 1
       47 MOVE                             R6 R1
       48 CALL                             R2 4 2
       49 GETUPVAL                         R4 12
       50 MOVE                             R5 R1
       51 CALL                             R4 1 0
       52 JUMPIF                           R2 ; [+26]
       53 GETIMPORT                        R4 K11 [error]
       55 MOVE                             R5 R3
       56 CALL                             R4 1 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R2 8
       59 GETUPVAL                         R4 10
       60 GETUPVAL                         R5 11
       61 FASTCALL2                        BIT32_BOR R4 R5 ; [+3]
       63 GETIMPORT                        R3 K9 [bit32.bor]
       65 CALL                             R3 2 1
       66 MOVE                             R4 R1
       67 CALL                             R2 2 0
       68 RETURN                           R0 0
       69 GETTABLEKS                       R2 R1 K0 ["tag"]
       71 GETUPVAL                         R3 13
       72 JUMPIFNOTEQ                      R2 R3 ; [+6]
       74 GETGLOBAL                        R2 K12 ["commitProfilerPassiveEffect"]
       76 MOVE                             R3 R0
       77 MOVE                             R4 R1
       78 CALL                             R2 2 0
       79 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+48]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+46]
        4 GETTABLEKS                       R1 R0 K0 ["tag"]
        6 GETUPVAL                         R2 2
        7 JUMPIFEQ                         R1 R2 ; [+16]
        9 GETTABLEKS                       R1 R0 K0 ["tag"]
       11 GETUPVAL                         R2 3
       12 JUMPIFEQ                         R1 R2 ; [+11]
       14 GETTABLEKS                       R1 R0 K0 ["tag"]
       16 GETUPVAL                         R2 4
       17 JUMPIFEQ                         R1 R2 ; [+6]
       19 GETTABLEKS                       R1 R0 K0 ["tag"]
       21 GETUPVAL                         R2 5
       22 JUMPIFNOTEQ                      R1 R2 ; [+52]
       24 GETUPVAL                         R1 6
       25 LOADNIL                          R2
       26 GETUPVAL                         R3 7
       27 LOADNIL                          R4
       28 GETUPVAL                         R6 8
       29 GETUPVAL                         R7 9
       30 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       32 GETIMPORT                        R5 K3 [bit32.bor]
       34 CALL                             R5 2 1
       35 MOVE                             R6 R0
       36 CALL                             R1 5 0
       37 GETUPVAL                         R1 10
       38 CALL                             R1 0 1
       39 JUMPIFNOT                        R1 ; [+8]
       40 GETUPVAL                         R1 11
       41 CALL                             R1 0 1
       42 GETUPVAL                         R2 12
       43 MOVE                             R3 R0
       44 GETTABLEKS                       R4 R0 K4 ["return_"]
       46 MOVE                             R5 R1
       47 CALL                             R2 3 0
       48 RETURN                           R0 0
       49 RETURN                           R0 0
       50 GETTABLEKS                       R1 R0 K0 ["tag"]
       52 GETUPVAL                         R2 13
       53 JUMPIFNOTEQ                      R1 R2 ; [+21]
       55 GETTABLEKS                       R1 R0 K5 ["stateNode"]
       57 GETUPVAL                         R2 6
       58 LOADNIL                          R3
       59 GETTABLEKS                       R4 R1 K6 ["componentDidMount"]
       61 MOVE                             R5 R1
       62 CALL                             R2 3 0
       63 GETUPVAL                         R2 10
       64 CALL                             R2 0 1
       65 JUMPIFNOT                        R2 ; [+8]
       66 GETUPVAL                         R2 11
       67 CALL                             R2 0 1
       68 GETUPVAL                         R3 12
       69 MOVE                             R4 R0
       70 GETTABLEKS                       R5 R0 K4 ["return_"]
       72 MOVE                             R6 R2
       73 CALL                             R3 3 0
       74 RETURN                           R0 0
       75 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+47]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+45]
        4 GETTABLEKS                       R1 R0 K0 ["tag"]
        6 GETUPVAL                         R2 2
        7 JUMPIFEQ                         R1 R2 ; [+16]
        9 GETTABLEKS                       R1 R0 K0 ["tag"]
       11 GETUPVAL                         R2 3
       12 JUMPIFEQ                         R1 R2 ; [+11]
       14 GETTABLEKS                       R1 R0 K0 ["tag"]
       16 GETUPVAL                         R2 4
       17 JUMPIFEQ                         R1 R2 ; [+6]
       19 GETTABLEKS                       R1 R0 K0 ["tag"]
       21 GETUPVAL                         R2 5
       22 JUMPIFNOTEQ                      R1 R2 ; [+26]
       24 GETUPVAL                         R1 6
       25 LOADNIL                          R2
       26 GETUPVAL                         R3 7
       27 LOADNIL                          R4
       28 GETUPVAL                         R6 8
       29 GETUPVAL                         R7 9
       30 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       32 GETIMPORT                        R5 K3 [bit32.bor]
       34 CALL                             R5 2 1
       35 MOVE                             R6 R0
       36 CALL                             R1 5 0
       37 GETUPVAL                         R1 10
       38 CALL                             R1 0 1
       39 JUMPIFNOT                        R1 ; [+8]
       40 GETUPVAL                         R1 11
       41 CALL                             R1 0 1
       42 GETUPVAL                         R2 12
       43 MOVE                             R3 R0
       44 GETTABLEKS                       R4 R0 K4 ["return_"]
       46 MOVE                             R5 R1
       47 CALL                             R2 3 0
       48 RETURN                           R0 0
       49 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+50]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+48]
        4 GETTABLEKS                       R1 R0 K0 ["tag"]
        6 GETUPVAL                         R2 2
        7 JUMPIFEQ                         R1 R2 ; [+16]
        9 GETTABLEKS                       R1 R0 K0 ["tag"]
       11 GETUPVAL                         R2 3
       12 JUMPIFEQ                         R1 R2 ; [+11]
       14 GETTABLEKS                       R1 R0 K0 ["tag"]
       16 GETUPVAL                         R2 4
       17 JUMPIFEQ                         R1 R2 ; [+6]
       19 GETTABLEKS                       R1 R0 K0 ["tag"]
       21 GETUPVAL                         R2 5
       22 JUMPIFNOTEQ                      R1 R2 ; [+52]
       24 GETUPVAL                         R1 6
       25 LOADNIL                          R2
       26 GETUPVAL                         R3 7
       27 LOADNIL                          R4
       28 GETUPVAL                         R6 8
       29 GETUPVAL                         R7 9
       30 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       32 GETIMPORT                        R5 K3 [bit32.bor]
       34 CALL                             R5 2 1
       35 MOVE                             R6 R0
       36 GETTABLEKS                       R7 R0 K4 ["return_"]
       38 CALL                             R1 6 0
       39 GETUPVAL                         R1 10
       40 CALL                             R1 0 1
       41 JUMPIFNOT                        R1 ; [+8]
       42 GETUPVAL                         R1 11
       43 CALL                             R1 0 1
       44 GETUPVAL                         R2 12
       45 MOVE                             R3 R0
       46 GETTABLEKS                       R4 R0 K4 ["return_"]
       48 MOVE                             R5 R1
       49 CALL                             R2 3 0
       50 RETURN                           R0 0
       51 RETURN                           R0 0
       52 GETTABLEKS                       R1 R0 K0 ["tag"]
       54 GETUPVAL                         R2 13
       55 JUMPIFNOTEQ                      R1 R2 ; [+19]
       57 GETTABLEKS                       R1 R0 K5 ["stateNode"]
       59 GETTABLEKS                       R3 R1 K6 ["componentWillUnmount"]
       61 FASTCALL1                        TYPEOF R3 ; [+2]
       62 GETIMPORT                        R2 K8 [typeof]
       64 CALL                             R2 1 1
       65 JUMPIFNOTEQKS                    R2 K9 ["function"] ; [+8]
       67 GETGLOBAL                        R2 K10 ["safelyCallComponentWillUnmount"]
       69 MOVE                             R3 R0
       70 MOVE                             R4 R1
       71 GETTABLEKS                       R5 R0 K4 ["return_"]
       73 CALL                             R2 3 0
       74 RETURN                           R0 0
       75 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+49]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+47]
        4 GETTABLEKS                       R1 R0 K0 ["tag"]
        6 GETUPVAL                         R2 2
        7 JUMPIFEQ                         R1 R2 ; [+16]
        9 GETTABLEKS                       R1 R0 K0 ["tag"]
       11 GETUPVAL                         R2 3
       12 JUMPIFEQ                         R1 R2 ; [+11]
       14 GETTABLEKS                       R1 R0 K0 ["tag"]
       16 GETUPVAL                         R2 4
       17 JUMPIFEQ                         R1 R2 ; [+6]
       19 GETTABLEKS                       R1 R0 K0 ["tag"]
       21 GETUPVAL                         R2 5
       22 JUMPIFNOTEQ                      R1 R2 ; [+28]
       24 GETUPVAL                         R1 6
       25 LOADNIL                          R2
       26 GETUPVAL                         R3 7
       27 LOADNIL                          R4
       28 GETUPVAL                         R6 8
       29 GETUPVAL                         R7 9
       30 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       32 GETIMPORT                        R5 K3 [bit32.bor]
       34 CALL                             R5 2 1
       35 MOVE                             R6 R0
       36 GETTABLEKS                       R7 R0 K4 ["return_"]
       38 CALL                             R1 6 0
       39 GETUPVAL                         R1 10
       40 CALL                             R1 0 1
       41 JUMPIFNOT                        R1 ; [+8]
       42 GETUPVAL                         R1 11
       43 CALL                             R1 0 1
       44 GETUPVAL                         R2 12
       45 MOVE                             R3 R0
       46 GETTABLEKS                       R4 R0 K4 ["return_"]
       48 MOVE                             R5 R1
       49 CALL                             R2 3 0
       50 RETURN                           R0 0
       51 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R2 K2 [_G]
        4 GETTABLEKS                       R1 R2 K3 ["__DEV__"]
        6 GETIMPORT                        R3 K2 [_G]
        8 GETTABLEKS                       R2 R3 K4 ["__YOLO__"]
       10 LOADN                            R3 0
       11 DUPCLOSURE                       R4 K5 [PROTO_1]
       12 GETIMPORT                        R7 K7 [script]
       14 GETTABLEKS                       R6 R7 K8 ["Parent"]
       16 GETTABLEKS                       R5 R6 K8 ["Parent"]
       18 GETIMPORT                        R7 K10 [require]
       20 GETTABLEKS                       R8 R5 K11 ["Shared"]
       22 CALL                             R7 1 1
       23 GETTABLEKS                       R6 R7 K12 ["console"]
       25 GETIMPORT                        R7 K10 [require]
       27 GETTABLEKS                       R8 R5 K13 ["LuauPolyfill"]
       29 CALL                             R7 1 1
       30 GETTABLEKS                       R8 R7 K14 ["Error"]
       32 GETTABLEKS                       R9 R7 K15 ["Set"]
       34 GETIMPORT                        R10 K10 [require]
       36 GETIMPORT                        R13 K7 [script]
       38 GETTABLEKS                       R12 R13 K8 ["Parent"]
       40 GETTABLEKS                       R11 R12 K16 ["ReactFiberHostConfig"]
       42 CALL                             R10 1 1
       43 GETIMPORT                        R11 K10 [require]
       45 GETIMPORT                        R14 K7 [script]
       47 GETTABLEKS                       R13 R14 K8 ["Parent"]
       49 GETTABLEKS                       R12 R13 K17 ["ReactInternalTypes"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K10 [require]
       54 GETIMPORT                        R15 K7 [script]
       56 GETTABLEKS                       R14 R15 K8 ["Parent"]
       58 GETTABLEKS                       R13 R14 K18 ["ReactFiberSuspenseComponent.new"]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K10 [require]
       63 GETIMPORT                        R16 K7 [script]
       65 GETTABLEKS                       R15 R16 K8 ["Parent"]
       67 GETTABLEKS                       R14 R15 K19 ["ReactUpdateQueue.new"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K10 [require]
       72 GETTABLEKS                       R15 R5 K11 ["Shared"]
       74 CALL                             R14 1 1
       75 GETIMPORT                        R15 K10 [require]
       77 GETIMPORT                        R18 K7 [script]
       79 GETTABLEKS                       R17 R18 K8 ["Parent"]
       81 GETTABLEKS                       R16 R17 K20 ["ReactFiberOffscreenComponent"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K10 [require]
       86 GETIMPORT                        R19 K7 [script]
       88 GETTABLEKS                       R18 R19 K8 ["Parent"]
       90 GETTABLEKS                       R17 R18 K21 ["ReactHookEffectTags"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R19 K10 [require]
       95 GETTABLEKS                       R20 R5 K22 ["Scheduler"]
       97 CALL                             R19 1 1
       98 GETTABLEKS                       R18 R19 K23 ["tracing"]
      100 GETTABLEKS                       R17 R18 K24 ["unstable_wrap"]
      102 GETIMPORT                        R19 K10 [require]
      104 GETTABLEKS                       R20 R5 K11 ["Shared"]
      106 CALL                             R19 1 1
      107 GETTABLEKS                       R18 R19 K25 ["ReactFeatureFlags"]
      109 GETTABLEKS                       R19 R18 K26 ["enableSchedulerTracing"]
      111 GETTABLEKS                       R20 R18 K27 ["enableProfilerTimer"]
      113 GETTABLEKS                       R21 R18 K28 ["enableProfilerCommitHooks"]
      115 GETTABLEKS                       R22 R18 K29 ["enableSuspenseCallback"]
      117 GETTABLEKS                       R23 R18 K30 ["enableDoubleInvokingEffects"]
      119 GETIMPORT                        R24 K10 [require]
      121 GETIMPORT                        R27 K7 [script]
      123 GETTABLEKS                       R26 R27 K8 ["Parent"]
      125 GETTABLEKS                       R25 R26 K31 ["ReactWorkTags"]
      127 CALL                             R24 1 1
      128 GETTABLEKS                       R25 R24 K32 ["FunctionComponent"]
      130 GETTABLEKS                       R26 R24 K33 ["ForwardRef"]
      132 GETTABLEKS                       R27 R24 K34 ["ClassComponent"]
      134 GETTABLEKS                       R28 R24 K35 ["HostRoot"]
      136 GETTABLEKS                       R29 R24 K36 ["HostComponent"]
      138 GETTABLEKS                       R30 R24 K37 ["HostText"]
      140 GETTABLEKS                       R31 R24 K38 ["HostPortal"]
      142 GETTABLEKS                       R32 R24 K39 ["Profiler"]
      144 GETTABLEKS                       R33 R24 K40 ["SuspenseComponent"]
      146 GETTABLEKS                       R34 R24 K41 ["DehydratedFragment"]
      148 GETTABLEKS                       R35 R24 K42 ["IncompleteClassComponent"]
      150 GETTABLEKS                       R36 R24 K43 ["MemoComponent"]
      152 GETTABLEKS                       R37 R24 K44 ["SimpleMemoComponent"]
      154 GETTABLEKS                       R38 R24 K45 ["SuspenseListComponent"]
      156 GETTABLEKS                       R39 R24 K46 ["FundamentalComponent"]
      158 GETTABLEKS                       R40 R24 K47 ["ScopeComponent"]
      160 GETTABLEKS                       R41 R24 K48 ["Block"]
      162 GETTABLEKS                       R42 R24 K49 ["OffscreenComponent"]
      164 GETTABLEKS                       R43 R24 K50 ["LegacyHiddenComponent"]
      166 GETIMPORT                        R45 K10 [require]
      168 GETTABLEKS                       R46 R5 K11 ["Shared"]
      170 CALL                             R45 1 1
      171 GETTABLEKS                       R44 R45 K51 ["ReactErrorUtils"]
      173 GETTABLEKS                       R45 R44 K52 ["invokeGuardedCallback"]
      175 GETTABLEKS                       R46 R44 K53 ["hasCaughtError"]
      177 GETTABLEKS                       R47 R44 K54 ["clearCaughtError"]
      179 GETIMPORT                        R48 K10 [require]
      181 GETIMPORT                        R51 K7 [script]
      183 GETTABLEKS                       R50 R51 K8 ["Parent"]
      185 GETTABLEKS                       R49 R50 K55 ["ReactFiberFlags"]
      187 CALL                             R48 1 1
      188 GETTABLEKS                       R49 R48 K56 ["NoFlags"]
      190 GETTABLEKS                       R50 R48 K57 ["ContentReset"]
      192 GETTABLEKS                       R51 R48 K58 ["Placement"]
      194 GETTABLEKS                       R52 R48 K59 ["Snapshot"]
      196 GETTABLEKS                       R53 R48 K60 ["Update"]
      198 GETTABLEKS                       R54 R48 K61 ["Callback"]
      200 GETTABLEKS                       R55 R48 K62 ["LayoutMask"]
      202 GETTABLEKS                       R56 R48 K63 ["PassiveMask"]
      204 GETTABLEKS                       R57 R48 K64 ["Ref"]
      206 GETIMPORT                        R59 K10 [require]
      208 GETTABLEKS                       R60 R5 K11 ["Shared"]
      210 CALL                             R59 1 1
      211 GETTABLEKS                       R58 R59 K65 ["getComponentName"]
      213 GETIMPORT                        R60 K10 [require]
      215 GETTABLEKS                       R61 R5 K11 ["Shared"]
      217 CALL                             R60 1 1
      218 GETTABLEKS                       R59 R60 K66 ["invariant"]
      220 GETIMPORT                        R61 K10 [require]
      222 GETTABLEKS                       R62 R5 K11 ["Shared"]
      224 CALL                             R61 1 1
      225 GETTABLEKS                       R60 R61 K67 ["describeError"]
      227 GETIMPORT                        R61 K10 [require]
      229 GETIMPORT                        R64 K7 [script]
      231 GETTABLEKS                       R63 R64 K8 ["Parent"]
      233 GETTABLEKS                       R62 R63 K68 ["ReactCurrentFiber"]
      235 CALL                             R61 1 1
      236 GETTABLEKS                       R62 R61 K69 ["current"]
      238 GETTABLEKS                       R63 R61 K70 ["resetCurrentFiber"]
      240 GETTABLEKS                       R64 R61 K71 ["setCurrentFiber"]
      242 GETIMPORT                        R66 K10 [require]
      244 GETIMPORT                        R69 K7 [script]
      246 GETTABLEKS                       R68 R69 K8 ["Parent"]
      248 GETTABLEKS                       R67 R68 K72 ["ReactFiberDevToolsHook.new"]
      250 CALL                             R66 1 1
      251 GETTABLEKS                       R65 R66 K73 ["onCommitUnmount"]
      253 GETIMPORT                        R67 K10 [require]
      255 GETIMPORT                        R70 K7 [script]
      257 GETTABLEKS                       R69 R70 K8 ["Parent"]
      259 GETTABLEKS                       R68 R69 K74 ["ReactFiberLazyComponent.new"]
      261 CALL                             R67 1 1
      262 GETTABLEKS                       R66 R67 K75 ["resolveDefaultProps"]
      264 GETIMPORT                        R67 K10 [require]
      266 GETIMPORT                        R70 K7 [script]
      268 GETTABLEKS                       R69 R70 K8 ["Parent"]
      270 GETTABLEKS                       R68 R69 K76 ["ReactProfilerTimer.new"]
      272 CALL                             R67 1 1
      273 GETTABLEKS                       R68 R67 K77 ["startLayoutEffectTimer"]
      275 GETTABLEKS                       R69 R67 K78 ["recordPassiveEffectDuration"]
      277 GETTABLEKS                       R70 R67 K79 ["recordLayoutEffectDuration"]
      279 GETTABLEKS                       R71 R67 K80 ["startPassiveEffectTimer"]
      281 GETTABLEKS                       R72 R67 K81 ["getCommitTime"]
      283 GETIMPORT                        R74 K10 [require]
      285 GETIMPORT                        R77 K7 [script]
      287 GETTABLEKS                       R76 R77 K8 ["Parent"]
      289 GETTABLEKS                       R75 R76 K82 ["ReactTypeOfMode"]
      291 CALL                             R74 1 1
      292 GETTABLEKS                       R73 R74 K83 ["ProfileMode"]
      294 GETTABLEKS                       R74 R13 K84 ["commitUpdateQueue"]
      296 GETTABLEKS                       R75 R10 K85 ["getPublicInstance"]
      298 GETTABLEKS                       R76 R10 K86 ["supportsMutation"]
      300 GETTABLEKS                       R77 R10 K87 ["supportsPersistence"]
      302 GETTABLEKS                       R78 R10 K88 ["supportsHydration"]
      304 GETTABLEKS                       R79 R10 K89 ["commitMount"]
      306 GETTABLEKS                       R80 R10 K90 ["commitUpdate"]
      308 GETTABLEKS                       R81 R10 K91 ["resetTextContent"]
      310 GETTABLEKS                       R82 R10 K92 ["commitTextUpdate"]
      312 GETTABLEKS                       R83 R10 K93 ["appendChild"]
      314 GETTABLEKS                       R84 R10 K94 ["appendChildToContainer"]
      316 GETTABLEKS                       R85 R10 K95 ["insertBefore"]
      318 GETTABLEKS                       R86 R10 K96 ["insertInContainerBefore"]
      320 GETTABLEKS                       R87 R10 K97 ["removeChild"]
      322 GETTABLEKS                       R88 R10 K98 ["removeChildFromContainer"]
      324 GETTABLEKS                       R89 R10 K99 ["hideInstance"]
      326 GETTABLEKS                       R90 R10 K100 ["hideTextInstance"]
      328 GETTABLEKS                       R91 R10 K101 ["unhideInstance"]
      330 GETTABLEKS                       R92 R10 K102 ["unhideTextInstance"]
      332 GETTABLEKS                       R93 R10 K103 ["commitHydratedSuspenseInstance"]
      334 GETTABLEKS                       R94 R10 K104 ["clearContainer"]
      336 LOADNIL                          R95
      337 NEWCLOSURE                       R96 P2
      338 CAPTURE                          REF R95
      339 NEWCLOSURE                       R97 P3
      340 CAPTURE                          REF R95
      341 DUPCLOSURE                       R98 K105 [PROTO_4]
      342 CAPTURE                          VAL R6
      343 DUPCLOSURE                       R99 K106 [PROTO_5]
      344 CAPTURE                          VAL R6
      345 GETTABLEKS                       R100 R16 K56 ["NoFlags"]
      347 GETTABLEKS                       R101 R16 K107 ["HasEffect"]
      349 GETTABLEKS                       R102 R16 K108 ["Layout"]
      351 GETTABLEKS                       R103 R16 K109 ["Passive"]
      353 LOADNIL                          R104
      354 NEWCLOSURE                       R105 P6
      355 CAPTURE                          REF R104
      356 LOADNIL                          R106
      357 LOADNIL                          R107
      358 LOADNIL                          R108
      359 LOADNIL                          R109
      360 LOADNIL                          R110
      361 LOADNIL                          R111
      362 LOADNIL                          R112
      363 LOADNIL                          R113
      364 LOADNIL                          R114
      365 LOADNIL                          R115
      366 LOADNIL                          R116
      367 DUPCLOSURE                       R117 K110 [PROTO_8]
      368 CAPTURE                          VAL R20
      369 CAPTURE                          VAL R21
      370 CAPTURE                          VAL R73
      371 CAPTURE                          VAL R68
      372 CAPTURE                          VAL R60
      373 CAPTURE                          VAL R70
      374 NEWCLOSURE                       R118 P8
      375 CAPTURE                          VAL R117
      376 CAPTURE                          VAL R60
      377 CAPTURE                          REF R99
      378 SETGLOBAL                        R118 K111 ["safelyCallComponentWillUnmount"]
      380 NEWCLOSURE                       R118 P9
      381 CAPTURE                          VAL R60
      382 CAPTURE                          REF R99
      383 NEWCLOSURE                       R119 P10
      384 CAPTURE                          VAL R60
      385 CAPTURE                          REF R99
      386 DUPCLOSURE                       R120 K112 [PROTO_12]
      387 CAPTURE                          VAL R25
      388 CAPTURE                          VAL R26
      389 CAPTURE                          VAL R37
      390 CAPTURE                          VAL R41
      391 CAPTURE                          VAL R27
      392 CAPTURE                          VAL R52
      393 CAPTURE                          VAL R1
      394 CAPTURE                          VAL R105
      395 CAPTURE                          VAL R6
      396 CAPTURE                          VAL R58
      397 CAPTURE                          VAL R66
      398 CAPTURE                          VAL R28
      399 CAPTURE                          VAL R76
      400 CAPTURE                          VAL R94
      401 CAPTURE                          VAL R29
      402 CAPTURE                          VAL R30
      403 CAPTURE                          VAL R31
      404 CAPTURE                          VAL R35
      405 CAPTURE                          VAL R59
      406 NEWCLOSURE                       R121 P12
      407 CAPTURE                          VAL R60
      408 CAPTURE                          REF R99
      409 DUPCLOSURE                       R122 K113 [PROTO_14]
      410 CAPTURE                          VAL R1
      411 CAPTURE                          VAL R6
      412 DUPCLOSURE                       R123 K114 [PROTO_15]
      413 CAPTURE                          VAL R20
      414 CAPTURE                          VAL R21
      415 CAPTURE                          VAL R32
      416 CAPTURE                          VAL R72
      417 CAPTURE                          VAL R19
      418 SETGLOBAL                        R123 K115 ["commitProfilerPassiveEffect"]
      420 NEWCLOSURE                       R123 P15
      421 CAPTURE                          REF R99
      422 CAPTURE                          REF R98
      423 CAPTURE                          VAL R32
      424 CAPTURE                          VAL R20
      425 CAPTURE                          VAL R21
      426 CAPTURE                          REF R116
      427 CAPTURE                          VAL R55
      428 CAPTURE                          VAL R49
      429 CAPTURE                          VAL R1
      430 CAPTURE                          VAL R62
      431 CAPTURE                          VAL R64
      432 CAPTURE                          VAL R45
      433 CAPTURE                          VAL R123
      434 CAPTURE                          VAL R46
      435 CAPTURE                          VAL R47
      436 CAPTURE                          VAL R63
      437 CAPTURE                          VAL R60
      438 CAPTURE                          VAL R53
      439 CAPTURE                          VAL R54
      440 CAPTURE                          VAL R61
      441 CAPTURE                          REF R3
      442 CAPTURE                          VAL R2
      443 CAPTURE                          VAL R25
      444 CAPTURE                          VAL R26
      445 CAPTURE                          VAL R37
      446 CAPTURE                          VAL R41
      447 CAPTURE                          VAL R73
      448 CAPTURE                          VAL R68
      449 CAPTURE                          VAL R122
      450 CAPTURE                          VAL R102
      451 CAPTURE                          VAL R101
      452 CAPTURE                          VAL R70
      453 CAPTURE                          VAL R56
      454 CAPTURE                          VAL R27
      455 CAPTURE                          REF R112
      456 CAPTURE                          VAL R28
      457 CAPTURE                          REF R110
      458 CAPTURE                          VAL R29
      459 CAPTURE                          REF R111
      460 CAPTURE                          VAL R33
      461 CAPTURE                          VAL R39
      462 CAPTURE                          VAL R31
      463 CAPTURE                          VAL R30
      464 CAPTURE                          VAL R35
      465 CAPTURE                          VAL R43
      466 CAPTURE                          VAL R42
      467 CAPTURE                          VAL R40
      468 CAPTURE                          VAL R38
      469 CAPTURE                          VAL R59
      470 CAPTURE                          VAL R57
      471 DUPCLOSURE                       R124 K116 [PROTO_18]
      472 CAPTURE                          VAL R20
      473 CAPTURE                          VAL R72
      474 CAPTURE                          VAL R53
      475 CAPTURE                          VAL R54
      476 CAPTURE                          VAL R49
      477 CAPTURE                          VAL R19
      478 CAPTURE                          VAL R21
      479 SETGLOBAL                        R124 K117 ["commitLayoutEffectsForProfiler"]
      481 DUPCLOSURE                       R112 K118 [PROTO_21]
      482 CAPTURE                          VAL R53
      483 CAPTURE                          VAL R1
      484 CAPTURE                          VAL R105
      485 CAPTURE                          VAL R6
      486 CAPTURE                          VAL R58
      487 CAPTURE                          VAL R20
      488 CAPTURE                          VAL R21
      489 CAPTURE                          VAL R73
      490 CAPTURE                          VAL R68
      491 CAPTURE                          VAL R60
      492 CAPTURE                          VAL R70
      493 CAPTURE                          VAL R66
      494 CAPTURE                          VAL R74
      495 DUPCLOSURE                       R110 K119 [PROTO_22]
      496 CAPTURE                          VAL R29
      497 CAPTURE                          VAL R75
      498 CAPTURE                          VAL R27
      499 CAPTURE                          VAL R74
      500 DUPCLOSURE                       R111 K120 [PROTO_23]
      501 CAPTURE                          VAL R53
      502 CAPTURE                          VAL R79
      503 DUPCLOSURE                       R124 K121 [PROTO_24]
      504 CAPTURE                          VAL R76
      505 CAPTURE                          VAL R29
      506 CAPTURE                          VAL R89
      507 CAPTURE                          VAL R91
      508 CAPTURE                          VAL R30
      509 CAPTURE                          VAL R90
      510 CAPTURE                          VAL R92
      511 CAPTURE                          VAL R42
      512 CAPTURE                          VAL R43
      513 DUPCLOSURE                       R125 K122 [PROTO_25]
      514 CAPTURE                          VAL R29
      515 CAPTURE                          VAL R75
      516 CAPTURE                          VAL R1
      517 CAPTURE                          VAL R6
      518 CAPTURE                          VAL R58
      519 SETGLOBAL                        R125 K123 ["commitAttachRef"]
      521 DUPCLOSURE                       R125 K124 [PROTO_26]
      522 SETGLOBAL                        R125 K125 ["commitDetachRef"]
      524 NEWCLOSURE                       R115 P23
      525 CAPTURE                          VAL R65
      526 CAPTURE                          VAL R25
      527 CAPTURE                          VAL R26
      528 CAPTURE                          VAL R36
      529 CAPTURE                          VAL R37
      530 CAPTURE                          VAL R41
      531 CAPTURE                          VAL R102
      532 CAPTURE                          VAL R100
      533 CAPTURE                          VAL R20
      534 CAPTURE                          VAL R21
      535 CAPTURE                          VAL R73
      536 CAPTURE                          VAL R68
      537 CAPTURE                          VAL R60
      538 CAPTURE                          REF R99
      539 CAPTURE                          VAL R70
      540 CAPTURE                          VAL R27
      541 CAPTURE                          VAL R29
      542 CAPTURE                          VAL R31
      543 CAPTURE                          VAL R76
      544 CAPTURE                          REF R113
      545 CAPTURE                          VAL R77
      546 CAPTURE                          VAL R0
      547 NEWCLOSURE                       R114 P24
      548 CAPTURE                          REF R115
      549 CAPTURE                          VAL R76
      550 CAPTURE                          VAL R31
      551 DUPCLOSURE                       R125 K126 [PROTO_29]
      552 NEWCLOSURE                       R126 P26
      553 CAPTURE                          REF R106
      554 CAPTURE                          VAL R8
      555 DUPCLOSURE                       R106 K127 [PROTO_31]
      556 CAPTURE                          VAL R29
      557 CAPTURE                          VAL R28
      558 CAPTURE                          VAL R31
      559 NEWCLOSURE                       R107 P28
      560 CAPTURE                          REF R106
      561 CAPTURE                          VAL R29
      562 CAPTURE                          VAL R30
      563 CAPTURE                          VAL R34
      564 CAPTURE                          VAL R51
      565 CAPTURE                          VAL R31
      566 NEWCLOSURE                       R127 P29
      567 CAPTURE                          VAL R76
      568 CAPTURE                          VAL R126
      569 CAPTURE                          VAL R29
      570 CAPTURE                          VAL R28
      571 CAPTURE                          VAL R31
      572 CAPTURE                          VAL R59
      573 CAPTURE                          VAL R50
      574 CAPTURE                          VAL R81
      575 CAPTURE                          REF R107
      576 CAPTURE                          REF R109
      577 CAPTURE                          REF R108
      578 NEWCLOSURE                       R109 P30
      579 CAPTURE                          VAL R29
      580 CAPTURE                          VAL R30
      581 CAPTURE                          VAL R86
      582 CAPTURE                          VAL R84
      583 CAPTURE                          VAL R31
      584 CAPTURE                          REF R109
      585 NEWCLOSURE                       R108 P31
      586 CAPTURE                          VAL R29
      587 CAPTURE                          VAL R30
      588 CAPTURE                          VAL R85
      589 CAPTURE                          VAL R83
      590 CAPTURE                          VAL R31
      591 CAPTURE                          REF R108
      592 NEWCLOSURE                       R113 P32
      593 CAPTURE                          VAL R8
      594 CAPTURE                          VAL R29
      595 CAPTURE                          VAL R28
      596 CAPTURE                          VAL R31
      597 CAPTURE                          VAL R30
      598 CAPTURE                          REF R114
      599 CAPTURE                          VAL R88
      600 CAPTURE                          VAL R87
      601 CAPTURE                          REF R115
      602 NEWCLOSURE                       R128 P33
      603 CAPTURE                          REF R113
      604 DUPCLOSURE                       R129 K128 [PROTO_39]
      605 CAPTURE                          VAL R25
      606 CAPTURE                          VAL R26
      607 CAPTURE                          VAL R36
      608 CAPTURE                          VAL R37
      609 CAPTURE                          VAL R41
      610 CAPTURE                          VAL R20
      611 CAPTURE                          VAL R21
      612 CAPTURE                          VAL R73
      613 CAPTURE                          VAL R68
      614 CAPTURE                          VAL R121
      615 CAPTURE                          VAL R102
      616 CAPTURE                          VAL R101
      617 CAPTURE                          VAL R60
      618 CAPTURE                          VAL R70
      619 CAPTURE                          VAL R27
      620 CAPTURE                          VAL R29
      621 CAPTURE                          VAL R80
      622 CAPTURE                          VAL R30
      623 CAPTURE                          VAL R59
      624 CAPTURE                          VAL R82
      625 CAPTURE                          VAL R28
      626 CAPTURE                          VAL R78
      627 CAPTURE                          VAL R0
      628 CAPTURE                          VAL R32
      629 CAPTURE                          VAL R33
      630 CAPTURE                          VAL R38
      631 CAPTURE                          VAL R35
      632 CAPTURE                          VAL R42
      633 CAPTURE                          VAL R43
      634 CAPTURE                          VAL R124
      635 NEWCLOSURE                       R130 P35
      636 CAPTURE                          REF R95
      637 CAPTURE                          VAL R76
      638 CAPTURE                          VAL R124
      639 CAPTURE                          VAL R22
      640 CAPTURE                          VAL R1
      641 CAPTURE                          VAL R6
      642 SETGLOBAL                        R130 K129 ["commitSuspenseComponent"]
      644 DUPCLOSURE                       R130 K130 [PROTO_41]
      645 CAPTURE                          VAL R78
      646 CAPTURE                          VAL R93
      647 CAPTURE                          VAL R22
      648 SETGLOBAL                        R130 K131 ["commitSuspenseHydrationCallbacks"]
      650 DUPCLOSURE                       R130 K132 [PROTO_45]
      651 CAPTURE                          VAL R9
      652 CAPTURE                          VAL R96
      653 CAPTURE                          VAL R19
      654 CAPTURE                          VAL R17
      655 SETGLOBAL                        R130 K133 ["attachSuspenseRetryListeners"]
      657 DUPCLOSURE                       R130 K134 [PROTO_46]
      658 SETGLOBAL                        R130 K135 ["isSuspenseBoundaryBeingHidden"]
      660 DUPCLOSURE                       R130 K136 [PROTO_47]
      661 CAPTURE                          VAL R76
      662 CAPTURE                          VAL R81
      663 SETGLOBAL                        R130 K137 ["commitResetTextContent"]
      665 DUPCLOSURE                       R130 K138 [PROTO_48]
      666 CAPTURE                          VAL R25
      667 CAPTURE                          VAL R26
      668 CAPTURE                          VAL R37
      669 CAPTURE                          VAL R41
      670 CAPTURE                          VAL R20
      671 CAPTURE                          VAL R21
      672 CAPTURE                          VAL R73
      673 CAPTURE                          VAL R71
      674 CAPTURE                          VAL R121
      675 CAPTURE                          VAL R103
      676 CAPTURE                          VAL R101
      677 CAPTURE                          VAL R69
      678 DUPCLOSURE                       R131 K139 [PROTO_49]
      679 CAPTURE                          VAL R25
      680 CAPTURE                          VAL R26
      681 CAPTURE                          VAL R37
      682 CAPTURE                          VAL R41
      683 CAPTURE                          VAL R20
      684 CAPTURE                          VAL R21
      685 CAPTURE                          VAL R73
      686 CAPTURE                          VAL R71
      687 CAPTURE                          VAL R121
      688 CAPTURE                          VAL R103
      689 CAPTURE                          VAL R69
      690 DUPCLOSURE                       R132 K140 [PROTO_50]
      691 CAPTURE                          VAL R25
      692 CAPTURE                          VAL R26
      693 CAPTURE                          VAL R37
      694 CAPTURE                          VAL R41
      695 CAPTURE                          VAL R20
      696 CAPTURE                          VAL R21
      697 CAPTURE                          VAL R73
      698 CAPTURE                          VAL R71
      699 CAPTURE                          VAL R122
      700 CAPTURE                          VAL R60
      701 CAPTURE                          VAL R103
      702 CAPTURE                          VAL R101
      703 CAPTURE                          VAL R69
      704 CAPTURE                          VAL R32
      705 NEWCLOSURE                       R133 P43
      706 CAPTURE                          VAL R1
      707 CAPTURE                          VAL R23
      708 CAPTURE                          VAL R25
      709 CAPTURE                          VAL R26
      710 CAPTURE                          VAL R37
      711 CAPTURE                          VAL R41
      712 CAPTURE                          VAL R45
      713 CAPTURE                          VAL R122
      714 CAPTURE                          VAL R102
      715 CAPTURE                          VAL R101
      716 CAPTURE                          VAL R46
      717 CAPTURE                          VAL R47
      718 CAPTURE                          REF R99
      719 CAPTURE                          VAL R27
      720 SETGLOBAL                        R133 K141 ["invokeLayoutEffectMountInDEV"]
      722 NEWCLOSURE                       R133 P44
      723 CAPTURE                          VAL R1
      724 CAPTURE                          VAL R23
      725 CAPTURE                          VAL R25
      726 CAPTURE                          VAL R26
      727 CAPTURE                          VAL R37
      728 CAPTURE                          VAL R41
      729 CAPTURE                          VAL R45
      730 CAPTURE                          VAL R122
      731 CAPTURE                          VAL R103
      732 CAPTURE                          VAL R101
      733 CAPTURE                          VAL R46
      734 CAPTURE                          VAL R47
      735 CAPTURE                          REF R99
      736 SETGLOBAL                        R133 K142 ["invokePassiveEffectMountInDEV"]
      738 NEWCLOSURE                       R133 P45
      739 CAPTURE                          VAL R1
      740 CAPTURE                          VAL R23
      741 CAPTURE                          VAL R25
      742 CAPTURE                          VAL R26
      743 CAPTURE                          VAL R37
      744 CAPTURE                          VAL R41
      745 CAPTURE                          VAL R45
      746 CAPTURE                          VAL R121
      747 CAPTURE                          VAL R102
      748 CAPTURE                          VAL R101
      749 CAPTURE                          VAL R46
      750 CAPTURE                          VAL R47
      751 CAPTURE                          REF R99
      752 CAPTURE                          VAL R27
      753 SETGLOBAL                        R133 K143 ["invokeLayoutEffectUnmountInDEV"]
      755 NEWCLOSURE                       R133 P46
      756 CAPTURE                          VAL R1
      757 CAPTURE                          VAL R23
      758 CAPTURE                          VAL R25
      759 CAPTURE                          VAL R26
      760 CAPTURE                          VAL R37
      761 CAPTURE                          VAL R41
      762 CAPTURE                          VAL R45
      763 CAPTURE                          VAL R121
      764 CAPTURE                          VAL R103
      765 CAPTURE                          VAL R101
      766 CAPTURE                          VAL R46
      767 CAPTURE                          VAL R47
      768 CAPTURE                          REF R99
      769 SETGLOBAL                        R133 K144 ["invokePassiveEffectUnmountInDEV"]
      771 DUPTABLE                         R133 K154 [{"safelyCallDestroy", "commitBeforeMutationLifeCycles", "commitResetTextContent", "commitPlacement", "commitDeletion", "commitWork", "commitAttachRef", "commitDetachRef", "commitPassiveUnmount", "commitPassiveUnmountInsideDeletedTree", "commitPassiveMount", "invokeLayoutEffectMountInDEV", "invokeLayoutEffectUnmountInDEV", "invokePassiveEffectMountInDEV", "invokePassiveEffectUnmountInDEV", "isSuspenseBoundaryBeingHidden", "recursivelyCommitLayoutEffects"}]
      772 SETTABLEKS                       R119 R133 K145 ["safelyCallDestroy"]
      774 SETTABLEKS                       R120 R133 K146 ["commitBeforeMutationLifeCycles"]
      776 GETGLOBAL                        R134 K137 ["commitResetTextContent"]
      778 SETTABLEKS                       R134 R133 K137 ["commitResetTextContent"]
      780 SETTABLEKS                       R127 R133 K147 ["commitPlacement"]
      782 SETTABLEKS                       R128 R133 K148 ["commitDeletion"]
      784 SETTABLEKS                       R129 R133 K149 ["commitWork"]
      786 GETGLOBAL                        R134 K123 ["commitAttachRef"]
      788 SETTABLEKS                       R134 R133 K123 ["commitAttachRef"]
      790 GETGLOBAL                        R134 K125 ["commitDetachRef"]
      792 SETTABLEKS                       R134 R133 K125 ["commitDetachRef"]
      794 SETTABLEKS                       R130 R133 K150 ["commitPassiveUnmount"]
      796 SETTABLEKS                       R131 R133 K151 ["commitPassiveUnmountInsideDeletedTree"]
      798 SETTABLEKS                       R132 R133 K152 ["commitPassiveMount"]
      800 GETGLOBAL                        R134 K141 ["invokeLayoutEffectMountInDEV"]
      802 SETTABLEKS                       R134 R133 K141 ["invokeLayoutEffectMountInDEV"]
      804 GETGLOBAL                        R134 K143 ["invokeLayoutEffectUnmountInDEV"]
      806 SETTABLEKS                       R134 R133 K143 ["invokeLayoutEffectUnmountInDEV"]
      808 GETGLOBAL                        R134 K142 ["invokePassiveEffectMountInDEV"]
      810 SETTABLEKS                       R134 R133 K142 ["invokePassiveEffectMountInDEV"]
      812 GETGLOBAL                        R134 K144 ["invokePassiveEffectUnmountInDEV"]
      814 SETTABLEKS                       R134 R133 K144 ["invokePassiveEffectUnmountInDEV"]
      816 GETGLOBAL                        R134 K135 ["isSuspenseBoundaryBeingHidden"]
      818 SETTABLEKS                       R134 R133 K135 ["isSuspenseBoundaryBeingHidden"]
      820 SETTABLEKS                       R123 R133 K153 ["recursivelyCommitLayoutEffects"]
      822 CLOSEUPVALS                      R3
      823 RETURN                           R133 1
