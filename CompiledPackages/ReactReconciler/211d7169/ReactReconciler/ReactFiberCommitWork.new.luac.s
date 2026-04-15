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
        9 JUMPIFNOT                        R2 ; [+27]
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+25]
       12 GETTABLEKS                       R3 R0 K4 ["mode"]
       14 GETUPVAL                         R4 2
       15 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       17 GETIMPORT                        R2 K7 [bit32.band]
       19 CALL                             R2 2 1
       20 JUMPIFEQKN                       R2 K8 [0] ; [+16]
       22 GETIMPORT                        R2 K10 [pcall]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R1
       27 CALL                             R2 1 2
       28 GETUPVAL                         R4 4
       29 MOVE                             R5 R0
       30 CALL                             R4 1 0
       31 JUMPIF                           R2 ; [+8]
       32 GETIMPORT                        R4 K12 [error]
       34 MOVE                             R5 R3
       35 CALL                             R4 1 0
       36 RETURN                           R0 0
       37 NAMECALL                         R2 R1 K13 ["componentWillUnmount"]
       39 CALL                             R2 1 0
       40 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R3 K1 [pcall]
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R3 3 2
        6 JUMPIF                           R3 ; [+5]
        7 GETUPVAL                         R5 1
        8 MOVE                             R6 R0
        9 MOVE                             R7 R2
       10 MOVE                             R8 R4
       11 CALL                             R5 3 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["ref"]
        2 JUMPIFEQKNIL                     R2 ; [+23]
        4 FASTCALL1                        TYPEOF R2 ; [+3]
        5 MOVE                             R4 R2
        6 GETIMPORT                        R3 K2 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K3 ["function"] ; [+13]
       11 GETIMPORT                        R3 K5 [pcall]
       13 MOVE                             R4 R2
       14 LOADNIL                          R5
       15 CALL                             R3 2 2
       16 JUMPIF                           R3 ; [+9]
       17 GETUPVAL                         R5 0
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 MOVE                             R8 R4
       21 CALL                             R5 3 0
       22 RETURN                           R0 0
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K6 ["current"]
       26 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R3 K1 [pcall]
        2 MOVE                             R4 R2
        3 CALL                             R3 1 2
        4 JUMPIF                           R3 ; [+5]
        5 GETUPVAL                         R5 0
        6 MOVE                             R6 R0
        7 MOVE                             R7 R1
        8 MOVE                             R8 R4
        9 CALL                             R5 3 0
       10 RETURN                           R0 0

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
       24 JUMPIFNOTEQ                      R2 R3 ; [+89]
       26 GETTABLEKS                       R3 R1 K1 ["flags"]
       28 GETUPVAL                         R4 5
       29 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       31 GETIMPORT                        R2 K4 [bit32.band]
       33 CALL                             R2 2 1
       34 JUMPIFEQKN                       R2 K5 [0] ; [+78]
       36 JUMPIFEQKNIL                     R0 ; [+76]
       38 GETTABLEKS                       R2 R0 K6 ["memoizedProps"]
       40 GETTABLEKS                       R3 R0 K7 ["memoizedState"]
       42 GETTABLEKS                       R4 R1 K8 ["stateNode"]
       44 GETIMPORT                        R6 K10 [_G]
       46 GETTABLEKS                       R5 R6 K11 ["__DEV__"]
       48 JUMPIFNOT                        R5 ; [+40]
       49 GETTABLEKS                       R5 R1 K12 ["type"]
       51 GETTABLEKS                       R6 R1 K13 ["elementType"]
       53 JUMPIFNOTEQ                      R5 R6 ; [+35]
       55 GETUPVAL                         R5 6
       56 JUMPIF                           R5 ; [+32]
       57 GETTABLEKS                       R5 R4 K14 ["props"]
       59 GETTABLEKS                       R6 R1 K6 ["memoizedProps"]
       61 JUMPIFEQ                         R5 R6 ; [+11]
       63 GETUPVAL                         R6 7
       64 GETTABLEKS                       R5 R6 K15 ["error"]
       66 LOADK                            R6 K16 ["Expected %s props to match memoized props before getSnapshotBeforeUpdate. This might either be because of a bug in React, or because a component reassigns its own `this.props`. Please file an issue."]
       67 GETUPVAL                         R8 8
       68 GETTABLEKS                       R9 R1 K12 ["type"]
       70 CALL                             R8 1 1
       71 ORK                              R7 R8 K17 ["instance"]
       72 CALL                             R5 2 0
       73 GETTABLEKS                       R5 R4 K18 ["state"]
       75 GETTABLEKS                       R6 R1 K7 ["memoizedState"]
       77 JUMPIFEQ                         R5 R6 ; [+11]
       79 GETUPVAL                         R6 7
       80 GETTABLEKS                       R5 R6 K15 ["error"]
       82 LOADK                            R6 K19 ["Expected %s state to match memoized state before getSnapshotBeforeUpdate. This might either be because of a bug in React, or because a component reassigns its own `this.state`. Please file an issue."]
       83 GETUPVAL                         R8 8
       84 GETTABLEKS                       R9 R1 K12 ["type"]
       86 CALL                             R8 1 1
       87 ORK                              R7 R8 K17 ["instance"]
       88 CALL                             R5 2 0
       89 GETTABLEKS                       R8 R1 K13 ["elementType"]
       91 GETTABLEKS                       R9 R1 K12 ["type"]
       93 JUMPIFNOTEQ                      R8 R9 ; [+3]
       95 MOVE                             R7 R2
       96 JUMPIF                           R7 ; [+5]
       97 GETUPVAL                         R7 9
       98 GETTABLEKS                       R8 R1 K12 ["type"]
      100 MOVE                             R9 R2
      101 CALL                             R7 2 1
      102 MOVE                             R8 R3
      103 NAMECALL                         R5 R4 K20 ["getSnapshotBeforeUpdate"]
      105 CALL                             R5 3 1
      106 GETIMPORT                        R7 K10 [_G]
      108 GETTABLEKS                       R6 R7 K11 ["__DEV__"]
      110 JUMPIFNOT                        R6 ; [0]
      111 SETTABLEKS                       R5 R4 K21 ["__reactInternalSnapshotBeforeUpdate"]
      113 RETURN                           R0 0
      114 GETTABLEKS                       R2 R1 K0 ["tag"]
      116 GETUPVAL                         R3 10
      117 JUMPIFNOTEQ                      R2 R3 ; [+20]
      119 GETUPVAL                         R2 11
      120 JUMPIFNOT                        R2 ; [+16]
      121 GETTABLEKS                       R3 R1 K1 ["flags"]
      123 GETUPVAL                         R4 5
      124 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
      126 GETIMPORT                        R2 K4 [bit32.band]
      128 CALL                             R2 2 1
      129 JUMPIFEQKN                       R2 K5 [0] ; [+7]
      131 GETTABLEKS                       R2 R1 K8 ["stateNode"]
      133 GETUPVAL                         R3 12
      134 GETTABLEKS                       R4 R2 K22 ["containerInfo"]
      136 CALL                             R3 1 0
      137 RETURN                           R0 0
      138 GETTABLEKS                       R2 R1 K0 ["tag"]
      140 GETUPVAL                         R3 13
      141 JUMPIFEQ                         R2 R3 ; [+16]
      143 GETTABLEKS                       R2 R1 K0 ["tag"]
      145 GETUPVAL                         R3 14
      146 JUMPIFEQ                         R2 R3 ; [+11]
      148 GETTABLEKS                       R2 R1 K0 ["tag"]
      150 GETUPVAL                         R3 15
      151 JUMPIFEQ                         R2 R3 ; [+6]
      153 GETTABLEKS                       R2 R1 K0 ["tag"]
      155 GETUPVAL                         R3 16
      156 JUMPIFNOTEQ                      R2 R3 ; [+2]
      158 RETURN                           R0 0
      159 GETUPVAL                         R2 17
      160 LOADB                            R3 0
      161 LOADK                            R4 K23 ["This unit of work tag should not have side-effects. This error is likely caused by a bug in React. Please file an issue."]
      162 CALL                             R2 2 0
      163 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R1 K0 ["updateQueue"]
        2 LOADNIL                          R4
        3 JUMPIFEQKNIL                     R3 ; [+3]
        5 GETTABLEKS                       R4 R3 K1 ["lastEffect"]
        7 JUMPIFEQKNIL                     R4 ; [+36]
        9 GETTABLEKS                       R5 R4 K2 ["next"]
       11 MOVE                             R6 R5
       12 GETTABLEKS                       R8 R6 K3 ["tag"]
       14 FASTCALL2                        BIT32_BAND R8 R0 ; [+4]
       16 MOVE                             R9 R0
       17 GETIMPORT                        R7 K6 [bit32.band]
       19 CALL                             R7 2 1
       20 JUMPIFNOTEQ                      R7 R0 ; [+18]
       22 GETTABLEKS                       R7 R6 K7 ["destroy"]
       24 LOADNIL                          R8
       25 SETTABLEKS                       R8 R6 K7 ["destroy"]
       27 JUMPIFEQKNIL                     R7 ; [+11]
       29 GETIMPORT                        R8 K9 [pcall]
       31 MOVE                             R9 R7
       32 CALL                             R8 1 2
       33 JUMPIF                           R8 ; [+5]
       34 GETUPVAL                         R10 0
       35 MOVE                             R11 R1
       36 MOVE                             R12 R2
       37 MOVE                             R13 R9
       38 CALL                             R10 3 0
       39 GETTABLEKS                       R6 R6 K2 ["next"]
       41 JUMPIFEQ                         R6 R5 ; [+2]
       43 JUMPBACK                         ; [-32]
       44 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["updateQueue"]
        2 LOADNIL                          R3
        3 JUMPIFEQKNIL                     R2 ; [+3]
        5 GETTABLEKS                       R3 R2 K1 ["lastEffect"]
        7 JUMPIFEQKNIL                     R3 ; [+65]
        9 GETTABLEKS                       R4 R3 K2 ["next"]
       11 MOVE                             R5 R4
       12 GETTABLEKS                       R7 R5 K3 ["tag"]
       14 FASTCALL2                        BIT32_BAND R7 R0 ; [+4]
       16 MOVE                             R8 R0
       17 GETIMPORT                        R6 K6 [bit32.band]
       19 CALL                             R6 2 1
       20 JUMPIFNOTEQ                      R6 R0 ; [+47]
       22 GETTABLEKS                       R6 R5 K7 ["create"]
       24 MOVE                             R7 R6
       25 CALL                             R7 0 1
       26 SETTABLEKS                       R7 R5 K8 ["destroy"]
       28 GETIMPORT                        R8 K10 [_G]
       30 GETTABLEKS                       R7 R8 K11 ["__DEV__"]
       32 JUMPIFNOT                        R7 ; [+35]
       33 GETTABLEKS                       R7 R5 K8 ["destroy"]
       35 JUMPIFEQKNIL                     R7 ; [+32]
       37 FASTCALL1                        TYPEOF R7 ; [+3]
       38 MOVE                             R9 R7
       39 GETIMPORT                        R8 K13 [typeof]
       41 CALL                             R8 1 1
       42 JUMPIFEQKS                       R8 K14 ["function"] ; [+25]
       44 LOADNIL                          R8
       45 JUMPIFNOTEQKNIL                  R7 ; [+3]
       47 LOADK                            R8 K15 [" You returned nil. If your effect does not require clean up, return nil (or nothing)."]
       48 JUMP                             ; [+13]
       49 GETTABLEKS                       R10 R7 K16 ["andThen"]
       51 FASTCALL1                        TYPEOF R10 ; [+2]
       52 GETIMPORT                        R9 K13 [typeof]
       54 CALL                             R9 1 1
       55 JUMPIFNOTEQKS                    R9 K14 ["function"] ; [+3]
       57 LOADK                            R8 K17 ["\n\nIt looks like you wrote useEffect(Promise.new(function() --[[...]] end) or returned a Promise. Instead, write the async function inside your effect and call it immediately:\n\nuseEffect(function()\n  function fetchData()\n    -- You can await here\n    local response = MyAPI.getData(someId):await()\n    -- ...\n  end\n  fetchData()\nend, {someId}) -- Or {} if effect doesn't need props or state\n\nLearn more about data fetching with Hooks: https://reactjs.org/link/hooks-data-fetching"]
       58 JUMP                             ; [+3]
       59 LOADK                            R9 K18 [" You returned: "]
       60 MOVE                             R10 R7
       61 CONCAT                           R8 R9 R10
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R9 R10 K19 ["error"]
       65 LOADK                            R10 K20 ["An effect function must not return anything besides a function, which is used for clean-up.%s"]
       66 MOVE                             R11 R8
       67 CALL                             R9 2 0
       68 GETTABLEKS                       R5 R5 K2 ["next"]
       70 JUMPIFEQ                         R5 R4 ; [+2]
       72 JUMPBACK                         ; [-61]
       73 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["alternate"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADK                            R0 K1 ["mount"]
        6 RETURN                           R0 1
        7 LOADK                            R0 K2 ["update"]
        8 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["alternate"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADK                            R0 K1 ["mount"]
        6 RETURN                           R0 1
        7 LOADK                            R0 K2 ["update"]
        8 RETURN                           R0 1

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 JUMPIFEQKNIL                     R2 ; [+2]
        2 SETUPVAL                         R2 0
        3 JUMPIFEQKNIL                     R3 ; [+2]
        5 SETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R0 K0 ["flags"]
        8 GETTABLEKS                       R5 R0 K1 ["tag"]
       10 GETUPVAL                         R6 2
       11 JUMPIFNOTEQ                      R5 R6 ; [+165]
       13 LOADNIL                          R6
       14 GETUPVAL                         R7 3
       15 JUMPIFNOT                        R7 ; [+4]
       16 GETUPVAL                         R7 4
       17 JUMPIFNOT                        R7 ; [+2]
       18 GETUPVAL                         R6 5
       19 SETUPVAL                         R0 5
       20 GETTABLEKS                       R7 R0 K2 ["child"]
       22 JUMPIFEQKNIL                     R7 ; [+66]
       24 GETTABLEKS                       R9 R0 K3 ["subtreeFlags"]
       26 GETUPVAL                         R10 6
       27 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       29 GETIMPORT                        R8 K6 [bit32.band]
       31 CALL                             R8 2 1
       32 GETUPVAL                         R9 7
       33 JUMPIFEQ                         R8 R9 ; [+52]
       35 GETIMPORT                        R10 K8 [_G]
       37 GETTABLEKS                       R9 R10 K9 ["__DEV__"]
       39 JUMPIFNOT                        R9 ; [+32]
       40 GETUPVAL                         R9 8
       41 GETUPVAL                         R10 9
       42 MOVE                             R11 R7
       43 CALL                             R10 1 0
       44 GETUPVAL                         R10 10
       45 LOADNIL                          R11
       46 GETUPVAL                         R12 11
       47 LOADNIL                          R13
       48 MOVE                             R14 R7
       49 MOVE                             R15 R1
       50 GETUPVAL                         R16 0
       51 GETUPVAL                         R17 1
       52 CALL                             R10 7 0
       53 GETUPVAL                         R10 12
       54 CALL                             R10 0 1
       55 JUMPIFNOT                        R10 ; [+7]
       56 GETUPVAL                         R10 13
       57 CALL                             R10 0 1
       58 GETUPVAL                         R11 0
       59 MOVE                             R12 R7
       60 MOVE                             R13 R0
       61 MOVE                             R14 R10
       62 CALL                             R11 3 0
       63 JUMPIFEQKNIL                     R9 ; [+5]
       65 GETUPVAL                         R10 9
       66 MOVE                             R11 R9
       67 CALL                             R10 1 0
       68 JUMP                             ; [+17]
       69 GETUPVAL                         R10 14
       70 CALL                             R10 0 0
       71 JUMP                             ; [+14]
       72 GETIMPORT                        R9 K11 [pcall]
       74 GETUPVAL                         R10 11
       75 MOVE                             R11 R7
       76 MOVE                             R12 R1
       77 GETUPVAL                         R13 0
       78 GETUPVAL                         R14 1
       79 CALL                             R9 5 2
       80 JUMPIF                           R9 ; [+5]
       81 GETUPVAL                         R11 0
       82 MOVE                             R12 R7
       83 MOVE                             R13 R0
       84 MOVE                             R14 R10
       85 CALL                             R11 3 0
       86 GETTABLEKS                       R7 R7 K12 ["sibling"]
       88 JUMPBACK                         ; [-67]
       89 GETUPVAL                         R11 15
       90 GETUPVAL                         R12 16
       91 FASTCALL2                        BIT32_BOR R11 R12 ; [+3]
       93 GETIMPORT                        R10 K14 [bit32.bor]
       95 CALL                             R10 2 1
       96 FASTCALL2                        BIT32_BAND R4 R10 ; [+4]
       98 MOVE                             R9 R4
       99 GETIMPORT                        R8 K6 [bit32.band]
      101 CALL                             R8 2 1
      102 GETUPVAL                         R9 7
      103 JUMPIFEQ                         R8 R9 ; [+54]
      105 GETUPVAL                         R9 3
      106 JUMPIFNOT                        R9 ; [+51]
      107 GETIMPORT                        R10 K8 [_G]
      109 GETTABLEKS                       R9 R10 K9 ["__DEV__"]
      111 JUMPIFNOT                        R9 ; [+32]
      112 GETUPVAL                         R9 8
      113 GETUPVAL                         R10 9
      114 MOVE                             R11 R0
      115 CALL                             R10 1 0
      116 GETUPVAL                         R10 10
      117 LOADNIL                          R11
      118 GETGLOBAL                        R12 K15 ["commitLayoutEffectsForProfiler"]
      120 LOADNIL                          R13
      121 MOVE                             R14 R0
      122 MOVE                             R15 R1
      123 CALL                             R10 5 0
      124 GETUPVAL                         R10 12
      125 CALL                             R10 0 1
      126 JUMPIFNOT                        R10 ; [+8]
      127 GETUPVAL                         R10 13
      128 CALL                             R10 0 1
      129 GETUPVAL                         R11 0
      130 MOVE                             R12 R0
      131 GETTABLEKS                       R13 R0 K16 ["return_"]
      133 MOVE                             R14 R10
      134 CALL                             R11 3 0
      135 JUMPIFEQKNIL                     R9 ; [+5]
      137 GETUPVAL                         R10 9
      138 MOVE                             R11 R9
      139 CALL                             R10 1 0
      140 JUMP                             ; [+17]
      141 GETUPVAL                         R10 14
      142 CALL                             R10 0 0
      143 JUMP                             ; [+14]
      144 GETIMPORT                        R9 K11 [pcall]
      146 GETGLOBAL                        R10 K15 ["commitLayoutEffectsForProfiler"]
      148 MOVE                             R11 R0
      149 MOVE                             R12 R1
      150 CALL                             R9 3 2
      151 JUMPIF                           R9 ; [+6]
      152 GETUPVAL                         R11 0
      153 MOVE                             R12 R0
      154 GETTABLEKS                       R13 R0 K16 ["return_"]
      156 MOVE                             R14 R10
      157 CALL                             R11 3 0
      158 GETUPVAL                         R9 3
      159 JUMPIFNOT                        R9 ; [+288]
      160 GETUPVAL                         R9 4
      161 JUMPIFNOT                        R9 ; [+286]
      162 JUMPIFEQKNIL                     R6 ; [+12]
      164 GETTABLEKS                       R9 R6 K17 ["stateNode"]
      166 GETTABLEKS                       R10 R9 K18 ["effectDuration"]
      168 GETTABLEKS                       R12 R0 K17 ["stateNode"]
      170 GETTABLEKS                       R11 R12 K18 ["effectDuration"]
      172 ADD                              R10 R10 R11
      173 SETTABLEKS                       R10 R9 K18 ["effectDuration"]
      175 SETUPVAL                         R6 5
      176 RETURN                           R0 0
      177 GETTABLEKS                       R6 R0 K2 ["child"]
      179 JUMPIFEQKNIL                     R6 ; [+112]
      181 GETTABLEKS                       R8 R0 K3 ["subtreeFlags"]
      183 GETUPVAL                         R9 6
      184 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
      186 GETIMPORT                        R7 K6 [bit32.band]
      188 CALL                             R7 2 1
      189 GETUPVAL                         R8 7
      190 JUMPIFEQ                         R7 R8 ; [+98]
      192 GETIMPORT                        R9 K8 [_G]
      194 GETTABLEKS                       R8 R9 K9 ["__DEV__"]
      196 JUMPIFNOT                        R8 ; [+51]
      197 GETUPVAL                         R9 17
      198 GETTABLEKS                       R8 R9 K19 ["current"]
      200 GETUPVAL                         R9 9
      201 MOVE                             R10 R6
      202 CALL                             R9 1 0
      203 GETUPVAL                         R9 18
      204 LOADN                            R10 20
      205 JUMPIFNOTLT                      R9 R10 ; [+27]
      207 GETUPVAL                         R9 18
      208 ADDK                             R9 R9 K20 [1]
      209 SETUPVAL                         R9 18
      210 GETUPVAL                         R9 10
      211 LOADNIL                          R10
      212 GETUPVAL                         R11 11
      213 LOADNIL                          R12
      214 MOVE                             R13 R6
      215 MOVE                             R14 R1
      216 GETUPVAL                         R15 0
      217 GETUPVAL                         R16 1
      218 CALL                             R9 7 0
      219 GETUPVAL                         R9 18
      220 SUBK                             R9 R9 K20 [1]
      221 SETUPVAL                         R9 18
      222 GETUPVAL                         R9 12
      223 CALL                             R9 0 1
      224 JUMPIFNOT                        R9 ; [+14]
      225 GETUPVAL                         R9 13
      226 CALL                             R9 0 1
      227 GETUPVAL                         R10 0
      228 MOVE                             R11 R6
      229 MOVE                             R12 R0
      230 MOVE                             R13 R9
      231 CALL                             R10 3 0
      232 JUMP                             ; [+6]
      233 GETUPVAL                         R9 11
      234 MOVE                             R10 R6
      235 MOVE                             R11 R1
      236 GETUPVAL                         R12 0
      237 GETUPVAL                         R13 1
      238 CALL                             R9 4 0
      239 JUMPIFEQKNIL                     R8 ; [+5]
      241 GETUPVAL                         R9 9
      242 MOVE                             R10 R8
      243 CALL                             R9 1 0
      244 JUMP                             ; [+44]
      245 GETUPVAL                         R9 14
      246 CALL                             R9 0 0
      247 JUMP                             ; [+41]
      248 LOADNIL                          R8
      249 LOADNIL                          R9
      250 GETIMPORT                        R11 K8 [_G]
      252 GETTABLEKS                       R10 R11 K21 ["__YOLO__"]
      254 JUMPIF                           R10 ; [+21]
      255 GETUPVAL                         R10 18
      256 LOADN                            R11 20
      257 JUMPIFNOTLT                      R10 R11 ; [+18]
      259 GETUPVAL                         R10 18
      260 ADDK                             R10 R10 K20 [1]
      261 SETUPVAL                         R10 18
      262 GETIMPORT                        R10 K11 [pcall]
      264 GETUPVAL                         R11 11
      265 MOVE                             R12 R6
      266 MOVE                             R13 R1
      267 GETUPVAL                         R14 0
      268 GETUPVAL                         R15 1
      269 CALL                             R10 5 2
      270 MOVE                             R8 R10
      271 MOVE                             R9 R11
      272 GETUPVAL                         R10 18
      273 SUBK                             R10 R10 K20 [1]
      274 SETUPVAL                         R10 18
      275 JUMP                             ; [+7]
      276 LOADB                            R8 1
      277 GETUPVAL                         R10 11
      278 MOVE                             R11 R6
      279 MOVE                             R12 R1
      280 GETUPVAL                         R13 0
      281 GETUPVAL                         R14 1
      282 CALL                             R10 4 0
      283 JUMPIF                           R8 ; [+5]
      284 GETUPVAL                         R10 0
      285 MOVE                             R11 R6
      286 MOVE                             R12 R0
      287 MOVE                             R13 R9
      288 CALL                             R10 3 0
      289 GETTABLEKS                       R6 R6 K12 ["sibling"]
      291 JUMPBACK                         ; [-113]
      292 GETUPVAL                         R10 15
      293 GETUPVAL                         R11 16
      294 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
      296 GETIMPORT                        R9 K14 [bit32.bor]
      298 CALL                             R9 2 1
      299 FASTCALL2                        BIT32_BAND R4 R9 ; [+4]
      301 MOVE                             R8 R4
      302 GETIMPORT                        R7 K6 [bit32.band]
      304 CALL                             R7 2 1
      305 GETUPVAL                         R8 7
      306 JUMPIFEQ                         R7 R8 ; [+128]
      308 GETUPVAL                         R8 19
      309 JUMPIFEQ                         R5 R8 ; [+10]
      311 GETUPVAL                         R8 20
      312 JUMPIFEQ                         R5 R8 ; [+7]
      314 GETUPVAL                         R8 21
      315 JUMPIFEQ                         R5 R8 ; [+4]
      317 GETUPVAL                         R8 22
      318 JUMPIFNOTEQ                      R5 R8 ; [+57]
      320 GETUPVAL                         R8 3
      321 JUMPIFNOT                        R8 ; [+30]
      322 GETUPVAL                         R8 4
      323 JUMPIFNOT                        R8 ; [+28]
      324 GETTABLEKS                       R9 R0 K22 ["mode"]
      326 GETUPVAL                         R10 23
      327 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      329 GETIMPORT                        R8 K6 [bit32.band]
      331 CALL                             R8 2 1
      332 JUMPIFEQKN                       R8 K23 [0] ; [+19]
      334 GETIMPORT                        R8 K11 [pcall]
      336 NEWCLOSURE                       R9 P0
      337 CAPTURE                          UPVAL U24
      338 CAPTURE                          UPVAL U25
      339 CAPTURE                          UPVAL U26
      340 CAPTURE                          UPVAL U27
      341 CAPTURE                          VAL R0
      342 CALL                             R8 1 2
      343 GETUPVAL                         R10 28
      344 MOVE                             R11 R0
      345 CALL                             R10 1 0
      346 JUMPIF                           R8 ; [+15]
      347 GETIMPORT                        R10 K25 [error]
      349 MOVE                             R11 R9
      350 CALL                             R10 1 0
      351 JUMP                             ; [+10]
      352 GETUPVAL                         R8 25
      353 GETUPVAL                         R10 26
      354 GETUPVAL                         R11 27
      355 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
      357 GETIMPORT                        R9 K14 [bit32.bor]
      359 CALL                             R9 2 1
      360 MOVE                             R10 R0
      361 CALL                             R8 2 0
      362 GETTABLEKS                       R9 R0 K3 ["subtreeFlags"]
      364 GETUPVAL                         R10 29
      365 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      367 GETIMPORT                        R8 K6 [bit32.band]
      369 CALL                             R8 2 1
      370 GETUPVAL                         R9 7
      371 JUMPIFEQ                         R8 R9 ; [+63]
      373 GETUPVAL                         R8 1
      374 CALL                             R8 0 0
      375 JUMP                             ; [+59]
      376 GETUPVAL                         R8 30
      377 JUMPIFNOTEQ                      R5 R8 ; [+5]
      379 GETUPVAL                         R8 31
      380 MOVE                             R9 R0
      381 CALL                             R8 1 0
      382 JUMP                             ; [+52]
      383 GETUPVAL                         R8 32
      384 JUMPIFNOTEQ                      R5 R8 ; [+5]
      386 GETUPVAL                         R8 33
      387 MOVE                             R9 R0
      388 CALL                             R8 1 0
      389 JUMP                             ; [+45]
      390 GETUPVAL                         R8 34
      391 JUMPIFNOTEQ                      R5 R8 ; [+5]
      393 GETUPVAL                         R8 35
      394 MOVE                             R9 R0
      395 CALL                             R8 1 0
      396 JUMP                             ; [+38]
      397 GETUPVAL                         R8 36
      398 JUMPIFNOTEQ                      R5 R8 ; [+7]
      400 GETGLOBAL                        R8 K26 ["commitSuspenseHydrationCallbacks"]
      402 MOVE                             R9 R1
      403 MOVE                             R10 R0
      404 CALL                             R8 2 0
      405 JUMP                             ; [+29]
      406 GETUPVAL                         R8 37
      407 JUMPIFEQ                         R5 R8 ; [+27]
      409 GETUPVAL                         R8 38
      410 JUMPIFEQ                         R5 R8 ; [+24]
      412 GETUPVAL                         R8 39
      413 JUMPIFEQ                         R5 R8 ; [+21]
      415 GETUPVAL                         R8 40
      416 JUMPIFEQ                         R5 R8 ; [+18]
      418 GETUPVAL                         R8 41
      419 JUMPIFEQ                         R5 R8 ; [+15]
      421 GETUPVAL                         R8 42
      422 JUMPIFEQ                         R5 R8 ; [+12]
      424 GETUPVAL                         R8 43
      425 JUMPIFEQ                         R5 R8 ; [+9]
      427 GETUPVAL                         R8 44
      428 JUMPIFNOTEQ                      R5 R8 ; [+2]
      430 JUMP                             ; [+4]
      431 GETUPVAL                         R8 45
      432 LOADB                            R9 0
      433 LOADK                            R10 K27 ["This unit of work tag should not have side-effects. This error is likely caused by a bug in React. Please file an issue."]
      434 CALL                             R8 2 0
      435 GETUPVAL                         R10 46
      436 FASTCALL2                        BIT32_BAND R4 R10 ; [+4]
      438 MOVE                             R9 R4
      439 GETIMPORT                        R8 K6 [bit32.band]
      441 CALL                             R8 2 1
      442 JUMPIFEQKN                       R8 K23 [0] ; [+5]
      444 GETGLOBAL                        R8 K28 ["commitAttachRef"]
      446 MOVE                             R9 R0
      447 CALL                             R8 1 0
      448 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADK                            R0 K0 ["mount"]
        4 RETURN                           R0 1
        5 LOADK                            R0 K1 ["update"]
        6 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADK                            R0 K0 ["mount"]
        4 RETURN                           R0 1
        5 LOADK                            R0 K1 ["update"]
        6 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADK                            R0 K0 ["mount"]
        4 RETURN                           R0 1
        5 LOADK                            R0 K1 ["update"]
        6 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADK                            R0 K0 ["mount"]
        4 RETURN                           R0 1
        5 LOADK                            R0 K1 ["update"]
        6 RETURN                           R0 1

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["componentDidMount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["stateNode"]
        2 GETTABLEKS                       R2 R0 K1 ["alternate"]
        4 GETTABLEKS                       R4 R0 K2 ["flags"]
        6 GETUPVAL                         R5 0
        7 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
        9 GETIMPORT                        R3 K5 [bit32.band]
       11 CALL                             R3 2 1
       12 JUMPIFEQKN                       R3 K6 [0] ; [+181]
       14 JUMPIFNOTEQKNIL                  R2 ; [+79]
       16 GETIMPORT                        R4 K8 [_G]
       18 GETTABLEKS                       R3 R4 K9 ["__DEV__"]
       20 JUMPIFNOT                        R3 ; [+40]
       21 GETTABLEKS                       R3 R0 K10 ["type"]
       23 GETTABLEKS                       R4 R0 K11 ["elementType"]
       25 JUMPIFNOTEQ                      R3 R4 ; [+35]
       27 GETUPVAL                         R3 1
       28 JUMPIF                           R3 ; [+32]
       29 GETTABLEKS                       R3 R1 K12 ["props"]
       31 GETTABLEKS                       R4 R0 K13 ["memoizedProps"]
       33 JUMPIFEQ                         R3 R4 ; [+11]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R3 R4 K14 ["error"]
       38 LOADK                            R4 K15 ["Expected %s props to match memoized props before componentDidMount. This might either be because of a bug in React, or because a component reassigns its own `this.props`. Please file an issue."]
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R7 R0 K10 ["type"]
       42 CALL                             R6 1 1
       43 ORK                              R5 R6 K16 ["instance"]
       44 CALL                             R3 2 0
       45 GETTABLEKS                       R3 R1 K17 ["state"]
       47 GETTABLEKS                       R4 R0 K18 ["memoizedState"]
       49 JUMPIFEQ                         R3 R4 ; [+11]
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R3 R4 K14 ["error"]
       54 LOADK                            R4 K19 ["Expected %s state to match memoized state before componentDidMount. This might either be because of a bug in React, or because a component reassigns its own `this.state`. Please file an issue."]
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R7 R0 K10 ["type"]
       58 CALL                             R6 1 1
       59 ORK                              R5 R6 K16 ["instance"]
       60 CALL                             R3 2 0
       61 GETUPVAL                         R3 4
       62 JUMPIFNOT                        R3 ; [+27]
       63 GETUPVAL                         R3 5
       64 JUMPIFNOT                        R3 ; [+25]
       65 GETTABLEKS                       R4 R0 K20 ["mode"]
       67 GETUPVAL                         R5 6
       68 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       70 GETIMPORT                        R3 K5 [bit32.band]
       72 CALL                             R3 2 1
       73 JUMPIFEQKN                       R3 K6 [0] ; [+16]
       75 GETIMPORT                        R3 K22 [pcall]
       77 NEWCLOSURE                       R4 P0
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          VAL R1
       80 CALL                             R3 1 2
       81 GETUPVAL                         R5 8
       82 MOVE                             R6 R0
       83 CALL                             R5 1 0
       84 JUMPIF                           R3 ; [+109]
       85 GETIMPORT                        R5 K23 [error]
       87 MOVE                             R6 R4
       88 CALL                             R5 1 0
       89 JUMP                             ; [+104]
       90 NAMECALL                         R3 R1 K24 ["componentDidMount"]
       92 CALL                             R3 1 0
       93 JUMP                             ; [+100]
       94 GETTABLEKS                       R4 R0 K11 ["elementType"]
       96 GETTABLEKS                       R5 R0 K10 ["type"]
       98 JUMPIFNOTEQ                      R4 R5 ; [+4]
      100 GETTABLEKS                       R3 R2 K13 ["memoizedProps"]
      102 JUMPIF                           R3 ; [+6]
      103 GETUPVAL                         R3 9
      104 GETTABLEKS                       R4 R0 K10 ["type"]
      106 GETTABLEKS                       R5 R2 K13 ["memoizedProps"]
      108 CALL                             R3 2 1
      109 GETTABLEKS                       R4 R2 K18 ["memoizedState"]
      111 GETIMPORT                        R6 K8 [_G]
      113 GETTABLEKS                       R5 R6 K9 ["__DEV__"]
      115 JUMPIFNOT                        R5 ; [+40]
      116 GETTABLEKS                       R5 R0 K10 ["type"]
      118 GETTABLEKS                       R6 R0 K11 ["elementType"]
      120 JUMPIFNOTEQ                      R5 R6 ; [+35]
      122 GETUPVAL                         R5 1
      123 JUMPIF                           R5 ; [+32]
      124 GETTABLEKS                       R5 R1 K12 ["props"]
      126 GETTABLEKS                       R6 R0 K13 ["memoizedProps"]
      128 JUMPIFEQ                         R5 R6 ; [+11]
      130 GETUPVAL                         R6 2
      131 GETTABLEKS                       R5 R6 K14 ["error"]
      133 LOADK                            R6 K25 ["Expected %s props to match memoized props before componentDidUpdate. This might either be because of a bug in React, or because a component reassigns its own `this.props`. Please file an issue."]
      134 GETUPVAL                         R8 3
      135 GETTABLEKS                       R9 R0 K10 ["type"]
      137 CALL                             R8 1 1
      138 ORK                              R7 R8 K16 ["instance"]
      139 CALL                             R5 2 0
      140 GETTABLEKS                       R5 R1 K17 ["state"]
      142 GETTABLEKS                       R6 R0 K18 ["memoizedState"]
      144 JUMPIFEQ                         R5 R6 ; [+11]
      146 GETUPVAL                         R6 2
      147 GETTABLEKS                       R5 R6 K14 ["error"]
      149 LOADK                            R6 K26 ["Expected %s state to match memoized state before componentDidUpdate. This might either be because of a bug in React, or because a component reassigns its own `this.state`. Please file an issue."]
      150 GETUPVAL                         R8 3
      151 GETTABLEKS                       R9 R0 K10 ["type"]
      153 CALL                             R8 1 1
      154 ORK                              R7 R8 K16 ["instance"]
      155 CALL                             R5 2 0
      156 GETUPVAL                         R5 4
      157 JUMPIFNOT                        R5 ; [+29]
      158 GETUPVAL                         R5 5
      159 JUMPIFNOT                        R5 ; [+27]
      160 GETTABLEKS                       R6 R0 K20 ["mode"]
      162 GETUPVAL                         R7 6
      163 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
      165 GETIMPORT                        R5 K5 [bit32.band]
      167 CALL                             R5 2 1
      168 JUMPIFEQKN                       R5 K6 [0] ; [+18]
      170 GETIMPORT                        R5 K22 [pcall]
      172 NEWCLOSURE                       R6 P1
      173 CAPTURE                          UPVAL U7
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R4
      177 CALL                             R5 1 2
      178 GETUPVAL                         R7 8
      179 MOVE                             R8 R0
      180 CALL                             R7 1 0
      181 JUMPIF                           R5 ; [+12]
      182 GETIMPORT                        R7 K23 [error]
      184 MOVE                             R8 R6
      185 CALL                             R7 1 0
      186 JUMP                             ; [+7]
      187 MOVE                             R7 R3
      188 MOVE                             R8 R4
      189 GETTABLEKS                       R9 R1 K27 ["__reactInternalSnapshotBeforeUpdate"]
      191 NAMECALL                         R5 R1 K28 ["componentDidUpdate"]
      193 CALL                             R5 4 0
      194 GETTABLEKS                       R3 R0 K29 ["updateQueue"]
      196 JUMPIFEQKNIL                     R3 ; [+51]
      198 GETIMPORT                        R5 K8 [_G]
      200 GETTABLEKS                       R4 R5 K9 ["__DEV__"]
      202 JUMPIFNOT                        R4 ; [+40]
      203 GETTABLEKS                       R4 R0 K10 ["type"]
      205 GETTABLEKS                       R5 R0 K11 ["elementType"]
      207 JUMPIFNOTEQ                      R4 R5 ; [+35]
      209 GETUPVAL                         R4 1
      210 JUMPIF                           R4 ; [+32]
      211 GETTABLEKS                       R4 R1 K12 ["props"]
      213 GETTABLEKS                       R5 R0 K13 ["memoizedProps"]
      215 JUMPIFEQ                         R4 R5 ; [+11]
      217 GETUPVAL                         R5 2
      218 GETTABLEKS                       R4 R5 K14 ["error"]
      220 LOADK                            R5 K30 ["Expected %s props to match memoized props before processing the update queue. This might either be because of a bug in React, or because a component reassigns its own `this.props`. Please file an issue."]
      221 GETUPVAL                         R7 3
      222 GETTABLEKS                       R8 R0 K10 ["type"]
      224 CALL                             R7 1 1
      225 ORK                              R6 R7 K16 ["instance"]
      226 CALL                             R4 2 0
      227 GETTABLEKS                       R4 R1 K17 ["state"]
      229 GETTABLEKS                       R5 R0 K18 ["memoizedState"]
      231 JUMPIFEQ                         R4 R5 ; [+11]
      233 GETUPVAL                         R5 2
      234 GETTABLEKS                       R4 R5 K14 ["error"]
      236 LOADK                            R5 K31 ["Expected %s state to match memoized state before processing the update queue. This might either be because of a bug in React, or because a component reassigns its own `this.state`. Please file an issue."]
      237 GETUPVAL                         R7 3
      238 GETTABLEKS                       R8 R0 K10 ["type"]
      240 CALL                             R7 1 1
      241 ORK                              R6 R7 K16 ["instance"]
      242 CALL                             R4 2 0
      243 GETUPVAL                         R4 10
      244 MOVE                             R5 R0
      245 MOVE                             R6 R3
      246 MOVE                             R7 R1
      247 CALL                             R4 3 0
      248 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 JUMPIFEQKNIL                     R1 ; [+51]
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
       29 GETIMPORT                        R5 K7 [_G]
       31 GETTABLEKS                       R4 R5 K8 ["__DEV__"]
       33 JUMPIFNOT                        R4 ; [+18]
       34 FASTCALL1                        TYPEOF R1 ; [+3]
       35 MOVE                             R5 R1
       36 GETIMPORT                        R4 K4 [typeof]
       38 CALL                             R4 1 1
       39 JUMPIFEQKS                       R4 K9 ["table"] ; [+12]
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R4 R5 K10 ["error"]
       44 LOADK                            R5 K11 ["Unexpected ref object provided for %s. Use either a ref-setter function or React.createRef()."]
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R8 R0 K13 ["type"]
       48 CALL                             R7 1 1
       49 ORK                              R6 R7 K12 ["instance"]
       50 CALL                             R4 2 0
       51 RETURN                           R0 0
       52 SETTABLEKS                       R3 R1 K14 ["current"]
       54 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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
       26 JUMPIFNOTEQ                      R4 R5 ; [+77]
       28 GETTABLEKS                       R4 R1 K1 ["updateQueue"]
       30 JUMPIFEQKNIL                     R4 ; [+72]
       32 GETTABLEKS                       R5 R4 K2 ["lastEffect"]
       34 JUMPIFEQKNIL                     R5 ; [+68]
       36 GETTABLEKS                       R6 R5 K3 ["next"]
       38 MOVE                             R7 R6
       39 GETTABLEKS                       R8 R7 K4 ["destroy"]
       41 JUMPIFEQKNIL                     R8 ; [+56]
       43 GETTABLEKS                       R9 R7 K0 ["tag"]
       45 GETUPVAL                         R10 6
       46 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       48 GETIMPORT                        R8 K7 [bit32.band]
       50 CALL                             R8 2 1
       51 GETUPVAL                         R9 7
       52 JUMPIFEQ                         R8 R9 ; [+45]
       54 GETUPVAL                         R8 8
       55 JUMPIFNOT                        R8 ; [+30]
       56 GETUPVAL                         R8 9
       57 JUMPIFNOT                        R8 ; [+28]
       58 GETTABLEKS                       R9 R1 K8 ["mode"]
       60 GETUPVAL                         R10 10
       61 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       63 GETIMPORT                        R8 K7 [bit32.band]
       65 CALL                             R8 2 1
       66 JUMPIFEQKN                       R8 K9 [0] ; [+19]
       68 GETUPVAL                         R8 11
       69 CALL                             R8 0 0
       70 GETTABLEKS                       R8 R7 K4 ["destroy"]
       72 GETIMPORT                        R9 K11 [pcall]
       74 MOVE                             R10 R8
       75 CALL                             R9 1 2
       76 JUMPIF                           R9 ; [+5]
       77 GETUPVAL                         R11 12
       78 MOVE                             R12 R1
       79 MOVE                             R13 R2
       80 MOVE                             R14 R10
       81 CALL                             R11 3 0
       82 GETUPVAL                         R8 13
       83 MOVE                             R9 R1
       84 CALL                             R8 1 0
       85 JUMP                             ; [+12]
       86 GETTABLEKS                       R8 R7 K4 ["destroy"]
       88 GETIMPORT                        R9 K11 [pcall]
       90 MOVE                             R10 R8
       91 CALL                             R9 1 2
       92 JUMPIF                           R9 ; [+5]
       93 GETUPVAL                         R11 12
       94 MOVE                             R12 R1
       95 MOVE                             R13 R2
       96 MOVE                             R14 R10
       97 CALL                             R11 3 0
       98 GETTABLEKS                       R7 R7 K3 ["next"]
      100 JUMPIFEQ                         R7 R6 ; [+2]
      102 JUMPBACK                         ; [-64]
      103 RETURN                           R0 0
      104 GETTABLEKS                       R4 R1 K0 ["tag"]
      106 GETUPVAL                         R5 14
      107 JUMPIFNOTEQ                      R4 R5 ; [+44]
      109 GETTABLEKS                       R4 R1 K12 ["ref"]
      111 JUMPIFEQKNIL                     R4 ; [+23]
      113 FASTCALL1                        TYPEOF R4 ; [+3]
      114 MOVE                             R6 R4
      115 GETIMPORT                        R5 K14 [typeof]
      117 CALL                             R5 1 1
      118 JUMPIFNOTEQKS                    R5 K15 ["function"] ; [+13]
      120 GETIMPORT                        R5 K11 [pcall]
      122 MOVE                             R6 R4
      123 LOADNIL                          R7
      124 CALL                             R5 2 2
      125 JUMPIF                           R5 ; [+9]
      126 GETUPVAL                         R7 12
      127 MOVE                             R8 R1
      128 MOVE                             R9 R2
      129 MOVE                             R10 R6
      130 CALL                             R7 3 0
      131 JUMP                             ; [+3]
      132 LOADNIL                          R5
      133 SETTABLEKS                       R5 R4 K16 ["current"]
      135 GETTABLEKS                       R4 R1 K17 ["stateNode"]
      137 GETTABLEKS                       R6 R4 K18 ["componentWillUnmount"]
      139 FASTCALL1                        TYPEOF R6 ; [+2]
      140 GETIMPORT                        R5 K14 [typeof]
      142 CALL                             R5 1 1
      143 JUMPIFNOTEQKS                    R5 K15 ["function"] ; [+7]
      145 GETGLOBAL                        R5 K19 ["safelyCallComponentWillUnmount"]
      147 MOVE                             R6 R1
      148 MOVE                             R7 R4
      149 MOVE                             R8 R2
      150 CALL                             R5 3 0
      151 RETURN                           R0 0
      152 GETTABLEKS                       R4 R1 K0 ["tag"]
      154 GETUPVAL                         R5 15
      155 JUMPIFNOTEQ                      R4 R5 ; [+28]
      157 GETTABLEKS                       R4 R1 K12 ["ref"]
      159 JUMPIFEQKNIL                     R4 ; [+23]
      161 FASTCALL1                        TYPEOF R4 ; [+3]
      162 MOVE                             R6 R4
      163 GETIMPORT                        R5 K14 [typeof]
      165 CALL                             R5 1 1
      166 JUMPIFNOTEQKS                    R5 K15 ["function"] ; [+13]
      168 GETIMPORT                        R5 K11 [pcall]
      170 MOVE                             R6 R4
      171 LOADNIL                          R7
      172 CALL                             R5 2 2
      173 JUMPIF                           R5 ; [+9]
      174 GETUPVAL                         R7 12
      175 MOVE                             R8 R1
      176 MOVE                             R9 R2
      177 MOVE                             R10 R6
      178 CALL                             R7 3 0
      179 RETURN                           R0 0
      180 LOADNIL                          R5
      181 SETTABLEKS                       R5 R4 K16 ["current"]
      183 RETURN                           R0 0
      184 GETTABLEKS                       R4 R1 K0 ["tag"]
      186 GETUPVAL                         R5 16
      187 JUMPIFNOTEQ                      R4 R5 ; [+16]
      189 GETUPVAL                         R4 17
      190 JUMPIFNOT                        R4 ; [+7]
      191 GETUPVAL                         R4 18
      192 MOVE                             R5 R0
      193 MOVE                             R6 R1
      194 MOVE                             R7 R2
      195 MOVE                             R8 R3
      196 CALL                             R4 4 0
      197 RETURN                           R0 0
      198 GETUPVAL                         R4 19
      199 JUMPIFNOT                        R4 ; [+3]
      200 GETUPVAL                         R4 20
      201 LOADK                            R5 K20 ["emptyPortalContainer"]
      202 CALL                             R4 1 0
      203 RETURN                           R0 0
      204 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["alternate"]
        2 JUMPIFEQKNIL                     R1 ; [+7]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["return_"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R0 K0 ["alternate"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R0 K1 ["return_"]
       13 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["return_"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R1 K0 ["return_"]
       11 JUMPBACK                         ; [-10]
       12 GETUPVAL                         R2 1
       13 LOADB                            R3 0
       14 LOADK                            R4 K1 ["Expected to find a host parent. This error is likely caused by a bug in React. Please file an issue."]
       15 CALL                             R2 2 0
       16 RETURN                           R1 1

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R2 R0 K0 ["return_"]
        5 JUMPIFEQKNIL                     R2 ; [+10]
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 MOVE                             R1 R2
       12 JUMP                             ; [+8]
       13 GETTABLEKS                       R2 R2 K0 ["return_"]
       15 JUMPBACK                         ; [-11]
       16 GETUPVAL                         R3 2
       17 LOADB                            R4 0
       18 LOADK                            R5 K1 ["Expected to find a host parent. This error is likely caused by a bug in React. Please file an issue."]
       19 CALL                             R3 2 0
       20 MOVE                             R1 R2
       21 LOADNIL                          R2
       22 LOADNIL                          R3
       23 GETTABLEKS                       R4 R1 K2 ["stateNode"]
       25 GETTABLEKS                       R5 R1 K3 ["tag"]
       27 GETUPVAL                         R6 3
       28 JUMPIFNOTEQ                      R5 R6 ; [+4]
       30 MOVE                             R2 R4
       31 LOADB                            R3 0
       32 JUMP                             ; [+22]
       33 GETTABLEKS                       R5 R1 K3 ["tag"]
       35 GETUPVAL                         R6 4
       36 JUMPIFNOTEQ                      R5 R6 ; [+5]
       38 GETTABLEKS                       R2 R4 K4 ["containerInfo"]
       40 LOADB                            R3 1
       41 JUMP                             ; [+13]
       42 GETTABLEKS                       R5 R1 K3 ["tag"]
       44 GETUPVAL                         R6 5
       45 JUMPIFNOTEQ                      R5 R6 ; [+5]
       47 GETTABLEKS                       R2 R4 K4 ["containerInfo"]
       49 LOADB                            R3 1
       50 JUMP                             ; [+4]
       51 GETUPVAL                         R5 2
       52 LOADB                            R6 0
       53 LOADK                            R7 K5 ["Invalid host parent fiber. This error is likely caused by a bug in React. Please file an issue."]
       54 CALL                             R5 2 0
       55 GETTABLEKS                       R6 R1 K6 ["flags"]
       57 GETUPVAL                         R7 6
       58 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       60 GETIMPORT                        R5 K9 [bit32.band]
       62 CALL                             R5 2 1
       63 JUMPIFEQKN                       R5 K10 [0] ; [+18]
       65 GETUPVAL                         R5 7
       66 MOVE                             R6 R2
       67 CALL                             R5 1 0
       68 GETTABLEKS                       R6 R1 K6 ["flags"]
       70 GETUPVAL                         R8 6
       71 FASTCALL1                        BIT32_BNOT R8 ; [+2]
       72 GETIMPORT                        R7 K12 [bit32.bnot]
       74 CALL                             R7 1 1
       75 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       77 GETIMPORT                        R5 K9 [bit32.band]
       79 CALL                             R5 2 1
       80 SETTABLEKS                       R5 R1 K6 ["flags"]
       82 GETUPVAL                         R5 8
       83 MOVE                             R6 R0
       84 CALL                             R5 1 1
       85 JUMPIFNOT                        R3 ; [+6]
       86 GETUPVAL                         R6 9
       87 MOVE                             R7 R0
       88 MOVE                             R8 R5
       89 MOVE                             R9 R2
       90 CALL                             R6 3 0
       91 RETURN                           R0 0
       92 GETUPVAL                         R6 10
       93 MOVE                             R7 R0
       94 MOVE                             R8 R5
       95 MOVE                             R9 R2
       96 CALL                             R6 3 0
       97 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 MOVE                             R4 R1
        1 LOADB                            R5 0
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 JUMPIF                           R5 ; [+34]
        5 GETTABLEKS                       R8 R4 K0 ["return_"]
        7 GETTABLEKS                       R9 R8 K1 ["stateNode"]
        9 GETTABLEKS                       R10 R8 K2 ["tag"]
       11 GETUPVAL                         R11 0
       12 JUMPIFNOTEQ                      R10 R11 ; [+4]
       14 MOVE                             R6 R9
       15 LOADB                            R7 0
       16 JUMP                             ; [+21]
       17 GETTABLEKS                       R10 R8 K2 ["tag"]
       19 GETUPVAL                         R11 1
       20 JUMPIFNOTEQ                      R10 R11 ; [+5]
       22 GETTABLEKS                       R6 R9 K3 ["containerInfo"]
       24 LOADB                            R7 1
       25 JUMP                             ; [+12]
       26 GETTABLEKS                       R10 R8 K2 ["tag"]
       28 GETUPVAL                         R11 2
       29 JUMPIFNOTEQ                      R10 R11 ; [+5]
       31 GETTABLEKS                       R6 R9 K3 ["containerInfo"]
       33 LOADB                            R7 1
       34 JUMP                             ; [+3]
       35 GETTABLEKS                       R8 R8 K0 ["return_"]
       37 JUMPBACK                         ; [-31]
       38 LOADB                            R5 1
       39 GETTABLEKS                       R8 R4 K2 ["tag"]
       41 GETUPVAL                         R9 0
       42 JUMPIFEQ                         R8 R9 ; [+6]
       44 GETTABLEKS                       R8 R4 K2 ["tag"]
       46 GETUPVAL                         R9 3
       47 JUMPIFNOTEQ                      R8 R9 ; [+20]
       49 GETUPVAL                         R8 4
       50 MOVE                             R9 R0
       51 MOVE                             R10 R4
       52 MOVE                             R11 R2
       53 MOVE                             R12 R3
       54 CALL                             R8 4 0
       55 JUMPIFNOT                        R7 ; [+6]
       56 GETUPVAL                         R8 5
       57 MOVE                             R9 R6
       58 GETTABLEKS                       R10 R4 K1 ["stateNode"]
       60 CALL                             R8 2 0
       61 JUMP                             ; [+45]
       62 GETUPVAL                         R8 6
       63 MOVE                             R9 R6
       64 GETTABLEKS                       R10 R4 K1 ["stateNode"]
       66 CALL                             R8 2 0
       67 JUMP                             ; [+39]
       68 GETTABLEKS                       R8 R4 K2 ["tag"]
       70 GETUPVAL                         R9 2
       71 JUMPIFNOTEQ                      R8 R9 ; [+18]
       73 GETTABLEKS                       R8 R4 K4 ["child"]
       75 JUMPIFEQKNIL                     R8 ; [+31]
       77 GETTABLEKS                       R8 R4 K1 ["stateNode"]
       79 GETTABLEKS                       R6 R8 K3 ["containerInfo"]
       81 LOADB                            R7 1
       82 GETTABLEKS                       R8 R4 K4 ["child"]
       84 SETTABLEKS                       R4 R8 K0 ["return_"]
       86 GETTABLEKS                       R4 R4 K4 ["child"]
       88 JUMP                             ; [+51]
       89 JUMP                             ; [+17]
       90 GETUPVAL                         R8 7
       91 MOVE                             R9 R0
       92 MOVE                             R10 R4
       93 MOVE                             R11 R2
       94 MOVE                             R12 R3
       95 CALL                             R8 4 0
       96 GETTABLEKS                       R8 R4 K4 ["child"]
       98 JUMPIFEQKNIL                     R8 ; [+8]
      100 GETTABLEKS                       R8 R4 K4 ["child"]
      102 SETTABLEKS                       R4 R8 K0 ["return_"]
      104 GETTABLEKS                       R4 R4 K4 ["child"]
      106 JUMP                             ; [+33]
      107 JUMPIFNOTEQ                      R4 R1 ; [+2]
      109 RETURN                           R0 0
      110 GETTABLEKS                       R8 R4 K5 ["sibling"]
      112 JUMPIFNOTEQKNIL                  R8 ; [+19]
      114 GETTABLEKS                       R8 R4 K0 ["return_"]
      116 JUMPIFEQKNIL                     R8 ; [+5]
      118 GETTABLEKS                       R8 R4 K0 ["return_"]
      120 JUMPIFNOTEQ                      R8 R1 ; [+2]
      122 RETURN                           R0 0
      123 GETTABLEKS                       R4 R4 K0 ["return_"]
      125 GETTABLEKS                       R8 R4 K2 ["tag"]
      127 GETUPVAL                         R9 2
      128 JUMPIFNOTEQ                      R8 R9 ; [+2]
      130 LOADB                            R5 0
      131 JUMPBACK                         ; [-22]
      132 GETTABLEKS                       R8 R4 K5 ["sibling"]
      134 GETTABLEKS                       R9 R4 K0 ["return_"]
      136 SETTABLEKS                       R9 R8 K0 ["return_"]
      138 GETTABLEKS                       R4 R4 K5 ["sibling"]
      140 JUMPBACK                         ; [-137]
      141 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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
       23 JUMPIFNOTEQ                      R2 R3 ; [+46]
       25 GETUPVAL                         R2 5
       26 JUMPIFNOT                        R2 ; [+30]
       27 GETUPVAL                         R2 6
       28 JUMPIFNOT                        R2 ; [+28]
       29 GETTABLEKS                       R3 R1 K1 ["mode"]
       31 GETUPVAL                         R4 7
       32 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       34 GETIMPORT                        R2 K4 [bit32.band]
       36 CALL                             R2 2 1
       37 JUMPIFEQKN                       R2 K5 [0] ; [+19]
       39 GETIMPORT                        R2 K7 [pcall]
       41 NEWCLOSURE                       R3 P0
       42 CAPTURE                          UPVAL U8
       43 CAPTURE                          UPVAL U9
       44 CAPTURE                          UPVAL U10
       45 CAPTURE                          UPVAL U11
       46 CAPTURE                          VAL R1
       47 CALL                             R2 1 2
       48 GETUPVAL                         R4 12
       49 MOVE                             R5 R1
       50 CALL                             R4 1 0
       51 JUMPIF                           R2 ; [+17]
       52 GETIMPORT                        R4 K9 [error]
       54 MOVE                             R5 R3
       55 CALL                             R4 1 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R2 9
       58 GETUPVAL                         R4 10
       59 GETUPVAL                         R5 11
       60 FASTCALL2                        BIT32_BOR R4 R5 ; [+3]
       62 GETIMPORT                        R3 K11 [bit32.bor]
       64 CALL                             R3 2 1
       65 MOVE                             R4 R1
       66 GETTABLEKS                       R5 R1 K12 ["return_"]
       68 CALL                             R2 3 0
       69 RETURN                           R0 0
       70 GETTABLEKS                       R2 R1 K0 ["tag"]
       72 GETUPVAL                         R3 13
       73 JUMPIFNOTEQ                      R2 R3 ; [+2]
       75 RETURN                           R0 0
       76 GETTABLEKS                       R2 R1 K0 ["tag"]
       78 GETUPVAL                         R3 14
       79 JUMPIFNOTEQ                      R2 R3 ; [+31]
       81 GETTABLEKS                       R2 R1 K13 ["stateNode"]
       83 JUMPIFEQKNIL                     R2 ; [+26]
       85 GETTABLEKS                       R3 R1 K14 ["memoizedProps"]
       87 LOADNIL                          R4
       88 JUMPIFNOT                        R0 ; [+3]
       89 GETTABLEKS                       R4 R0 K14 ["memoizedProps"]
       91 JUMP                             ; [+1]
       92 MOVE                             R4 R3
       93 GETTABLEKS                       R5 R1 K15 ["type"]
       95 GETTABLEKS                       R6 R1 K16 ["updateQueue"]
       97 LOADNIL                          R7
       98 SETTABLEKS                       R7 R1 K16 ["updateQueue"]
      100 JUMPIFEQKNIL                     R6 ; [+9]
      102 GETUPVAL                         R7 15
      103 MOVE                             R8 R2
      104 MOVE                             R9 R6
      105 MOVE                             R10 R5
      106 MOVE                             R11 R4
      107 MOVE                             R12 R3
      108 MOVE                             R13 R1
      109 CALL                             R7 6 0
      110 RETURN                           R0 0
      111 GETTABLEKS                       R2 R1 K0 ["tag"]
      113 GETUPVAL                         R3 16
      114 JUMPIFNOTEQ                      R2 R3 ; [+26]
      116 GETUPVAL                         R2 17
      117 GETTABLEKS                       R4 R1 K13 ["stateNode"]
      119 JUMPIFNOTEQKNIL                  R4 ; [+2]
      121 LOADB                            R3 0 +1
      122 LOADB                            R3 1
      123 LOADK                            R4 K17 ["This should have a text node initialized. This error is likely caused by a bug in React. Please file an issue."]
      124 CALL                             R2 2 0
      125 GETTABLEKS                       R2 R1 K13 ["stateNode"]
      127 GETTABLEKS                       R3 R1 K14 ["memoizedProps"]
      129 LOADNIL                          R4
      130 JUMPIFEQKNIL                     R0 ; [+4]
      132 GETTABLEKS                       R4 R0 K14 ["memoizedProps"]
      134 MOVE                             R4 R3
      135 GETUPVAL                         R5 18
      136 MOVE                             R6 R2
      137 MOVE                             R7 R4
      138 MOVE                             R8 R3
      139 CALL                             R5 3 0
      140 RETURN                           R0 0
      141 GETTABLEKS                       R2 R1 K0 ["tag"]
      143 GETUPVAL                         R3 19
      144 JUMPIFNOTEQ                      R2 R3 ; [+15]
      146 GETUPVAL                         R2 20
      147 JUMPIFNOT                        R2 ; [+11]
      148 GETTABLEKS                       R2 R1 K13 ["stateNode"]
      150 GETTABLEKS                       R3 R2 K18 ["hydrate"]
      152 JUMPIFNOT                        R3 ; [+6]
      153 LOADB                            R3 0
      154 SETTABLEKS                       R3 R2 K18 ["hydrate"]
      156 GETUPVAL                         R3 21
      157 LOADK                            R4 K19 ["commitWork: HostRoot: commitHydratedContainer"]
      158 CALL                             R3 1 0
      159 RETURN                           R0 0
      160 GETTABLEKS                       R2 R1 K0 ["tag"]
      162 GETUPVAL                         R3 22
      163 JUMPIFNOTEQ                      R2 R3 ; [+2]
      165 RETURN                           R0 0
      166 GETTABLEKS                       R2 R1 K0 ["tag"]
      168 GETUPVAL                         R3 23
      169 JUMPIFNOTEQ                      R2 R3 ; [+10]
      171 GETGLOBAL                        R2 K20 ["commitSuspenseComponent"]
      173 MOVE                             R3 R1
      174 CALL                             R2 1 0
      175 GETGLOBAL                        R2 K21 ["attachSuspenseRetryListeners"]
      177 MOVE                             R3 R1
      178 CALL                             R2 1 0
      179 RETURN                           R0 0
      180 GETTABLEKS                       R2 R1 K0 ["tag"]
      182 GETUPVAL                         R3 24
      183 JUMPIFNOTEQ                      R2 R3 ; [+5]
      185 GETUPVAL                         R2 21
      186 LOADK                            R3 K22 ["commitWork: SuspenseListComponent"]
      187 CALL                             R2 1 0
      188 JUMP                             ; [+27]
      189 GETTABLEKS                       R2 R1 K0 ["tag"]
      191 GETUPVAL                         R3 25
      192 JUMPIFNOTEQ                      R2 R3 ; [+2]
      194 RETURN                           R0 0
      195 GETTABLEKS                       R2 R1 K0 ["tag"]
      197 GETUPVAL                         R3 26
      198 JUMPIFEQ                         R2 R3 ; [+6]
      200 GETTABLEKS                       R2 R1 K0 ["tag"]
      202 GETUPVAL                         R3 27
      203 JUMPIFNOTEQ                      R2 R3 ; [+12]
      205 GETTABLEKS                       R2 R1 K23 ["memoizedState"]
      207 JUMPIFNOTEQKNIL                  R2 ; [+2]
      209 LOADB                            R3 0 +1
      210 LOADB                            R3 1
      211 GETUPVAL                         R4 28
      212 MOVE                             R5 R1
      213 MOVE                             R6 R3
      214 CALL                             R4 2 0
      215 RETURN                           R0 0
      216 GETUPVAL                         R2 17
      217 LOADB                            R3 0
      218 LOADK                            R4 K24 ["This unit of work tag should not have side-effects. This error is likely caused by a bug in React. Please file an issue."]
      219 CALL                             R2 2 0
      220 RETURN                           R0 0

PROTO_46:
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
       29 JUMPIFNOT                        R2 ; [+44]
       30 JUMPIFEQKNIL                     R1 ; [+43]
       32 GETTABLEKS                       R3 R0 K9 ["memoizedProps"]
       34 GETTABLEKS                       R2 R3 K10 ["suspenseCallback"]
       36 FASTCALL1                        TYPEOF R2 ; [+3]
       37 MOVE                             R4 R2
       38 GETIMPORT                        R3 K12 [typeof]
       40 CALL                             R3 1 1
       41 JUMPIFNOTEQKS                    R3 K13 ["function"] ; [+15]
       43 GETTABLEKS                       R3 R0 K14 ["updateQueue"]
       45 JUMPIFEQKNIL                     R3 ; [+28]
       47 MOVE                             R4 R2
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R5 R6 K15 ["assign"]
       51 NEWTABLE                         R6 0 0
       53 MOVE                             R7 R3
       54 CALL                             R5 2 -1
       55 CALL                             R4 -1 0
       56 RETURN                           R0 0
       57 GETIMPORT                        R4 K17 [_G]
       59 GETTABLEKS                       R3 R4 K18 ["__DEV__"]
       61 JUMPIFNOT                        R3 ; [+12]
       62 JUMPIFEQKNIL                     R2 ; [+11]
       64 GETUPVAL                         R4 5
       65 GETTABLEKS                       R3 R4 K19 ["error"]
       67 LOADK                            R4 K20 ["Unexpected type for suspenseCallback: %s"]
       68 FASTCALL1                        TOSTRING R2 ; [+3]
       69 MOVE                             R6 R2
       70 GETIMPORT                        R5 K22 [tostring]
       72 CALL                             R5 1 1
       73 CALL                             R3 2 0
       74 RETURN                           R0 0

PROTO_47:
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

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_49:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_50:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_51:
        0 GETTABLEKS                       R1 R0 K0 ["updateQueue"]
        2 JUMPIFEQKNIL                     R1 ; [+54]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R0 K0 ["updateQueue"]
        7 GETTABLEKS                       R2 R0 K1 ["stateNode"]
        9 JUMPIFNOTEQKNIL                  R2 ; [+9]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K2 ["new"]
       14 CALL                             R3 0 1
       15 SETTABLEKS                       R3 R0 K1 ["stateNode"]
       17 GETTABLEKS                       R2 R0 K1 ["stateNode"]
       19 GETIMPORT                        R3 K4 [pairs]
       21 MOVE                             R4 R1
       22 CALL                             R3 1 3
       23 FORGPREP_NEXT                    R3
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R6
       28 MOVE                             R11 R6
       29 NAMECALL                         R9 R2 K5 ["has"]
       31 CALL                             R9 2 1
       32 JUMPIF                           R9 ; [+21]
       33 GETUPVAL                         R9 2
       34 JUMPIFNOT                        R9 ; [+8]
       35 GETTABLEKS                       R9 R6 K6 ["__reactDoNotTraceInteractions"]
       37 JUMPIFEQKB                       R9 TRUE ; [+5]
       39 GETUPVAL                         R9 3
       40 MOVE                             R10 R8
       41 CALL                             R9 1 1
       42 MOVE                             R8 R9
       43 MOVE                             R11 R6
       44 NAMECALL                         R9 R2 K7 ["add"]
       46 CALL                             R9 2 0
       47 NEWCLOSURE                       R11 P1
       48 CAPTURE                          REF R8
       49 NEWCLOSURE                       R12 P2
       50 CAPTURE                          REF R8
       51 NAMECALL                         R9 R6 K8 ["andThen"]
       53 CALL                             R9 3 0
       54 CLOSEUPVALS                      R8
       55 FORGLOOP                         R3 2 ; [-32]
       57 RETURN                           R0 0

PROTO_52:
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

PROTO_53:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K0 ["stateNode"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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
       18 JUMPIFNOTEQ                      R2 R3 ; [+49]
       20 GETUPVAL                         R2 4
       21 JUMPIFNOT                        R2 ; [+35]
       22 GETUPVAL                         R2 5
       23 JUMPIFNOT                        R2 ; [+33]
       24 GETTABLEKS                       R3 R1 K1 ["mode"]
       26 GETUPVAL                         R4 6
       27 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       29 GETIMPORT                        R2 K4 [bit32.band]
       31 CALL                             R2 2 1
       32 JUMPIFEQKN                       R2 K5 [0] ; [+24]
       34 GETUPVAL                         R2 7
       35 CALL                             R2 0 0
       36 GETIMPORT                        R2 K7 [pcall]
       38 GETUPVAL                         R3 8
       39 GETUPVAL                         R5 9
       40 GETUPVAL                         R6 10
       41 FASTCALL2                        BIT32_BOR R5 R6 ; [+3]
       43 GETIMPORT                        R4 K9 [bit32.bor]
       45 CALL                             R4 2 1
       46 MOVE                             R5 R1
       47 CALL                             R2 3 2
       48 GETUPVAL                         R4 11
       49 MOVE                             R5 R1
       50 CALL                             R4 1 0
       51 JUMPIF                           R2 ; [+26]
       52 GETIMPORT                        R4 K11 [error]
       54 MOVE                             R5 R3
       55 CALL                             R4 1 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R2 8
       58 GETUPVAL                         R4 9
       59 GETUPVAL                         R5 10
       60 FASTCALL2                        BIT32_BOR R4 R5 ; [+3]
       62 GETIMPORT                        R3 K9 [bit32.bor]
       64 CALL                             R3 2 1
       65 MOVE                             R4 R1
       66 CALL                             R2 2 0
       67 RETURN                           R0 0
       68 GETTABLEKS                       R2 R1 K0 ["tag"]
       70 GETUPVAL                         R3 12
       71 JUMPIFNOTEQ                      R2 R3 ; [+6]
       73 GETGLOBAL                        R2 K12 ["commitProfilerPassiveEffect"]
       75 MOVE                             R3 R0
       76 MOVE                             R4 R1
       77 CALL                             R2 2 0
       78 RETURN                           R0 0

PROTO_57:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+48]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+46]
        7 GETTABLEKS                       R1 R0 K3 ["tag"]
        9 GETUPVAL                         R2 1
       10 JUMPIFEQ                         R1 R2 ; [+16]
       12 GETTABLEKS                       R1 R0 K3 ["tag"]
       14 GETUPVAL                         R2 2
       15 JUMPIFEQ                         R1 R2 ; [+11]
       17 GETTABLEKS                       R1 R0 K3 ["tag"]
       19 GETUPVAL                         R2 3
       20 JUMPIFEQ                         R1 R2 ; [+6]
       22 GETTABLEKS                       R1 R0 K3 ["tag"]
       24 GETUPVAL                         R2 4
       25 JUMPIFNOTEQ                      R1 R2 ; [+52]
       27 GETUPVAL                         R1 5
       28 LOADNIL                          R2
       29 GETUPVAL                         R3 6
       30 LOADNIL                          R4
       31 GETUPVAL                         R6 7
       32 GETUPVAL                         R7 8
       33 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       35 GETIMPORT                        R5 K6 [bit32.bor]
       37 CALL                             R5 2 1
       38 MOVE                             R6 R0
       39 CALL                             R1 5 0
       40 GETUPVAL                         R1 9
       41 CALL                             R1 0 1
       42 JUMPIFNOT                        R1 ; [+8]
       43 GETUPVAL                         R1 10
       44 CALL                             R1 0 1
       45 GETUPVAL                         R2 11
       46 MOVE                             R3 R0
       47 GETTABLEKS                       R4 R0 K7 ["return_"]
       49 MOVE                             R5 R1
       50 CALL                             R2 3 0
       51 RETURN                           R0 0
       52 RETURN                           R0 0
       53 GETTABLEKS                       R1 R0 K3 ["tag"]
       55 GETUPVAL                         R2 12
       56 JUMPIFNOTEQ                      R1 R2 ; [+21]
       58 GETTABLEKS                       R1 R0 K8 ["stateNode"]
       60 GETUPVAL                         R2 5
       61 LOADNIL                          R3
       62 GETTABLEKS                       R4 R1 K9 ["componentDidMount"]
       64 MOVE                             R5 R1
       65 CALL                             R2 3 0
       66 GETUPVAL                         R2 9
       67 CALL                             R2 0 1
       68 JUMPIFNOT                        R2 ; [+8]
       69 GETUPVAL                         R2 10
       70 CALL                             R2 0 1
       71 GETUPVAL                         R3 11
       72 MOVE                             R4 R0
       73 GETTABLEKS                       R5 R0 K7 ["return_"]
       75 MOVE                             R6 R2
       76 CALL                             R3 3 0
       77 RETURN                           R0 0
       78 RETURN                           R0 0

PROTO_58:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+47]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+45]
        7 GETTABLEKS                       R1 R0 K3 ["tag"]
        9 GETUPVAL                         R2 1
       10 JUMPIFEQ                         R1 R2 ; [+16]
       12 GETTABLEKS                       R1 R0 K3 ["tag"]
       14 GETUPVAL                         R2 2
       15 JUMPIFEQ                         R1 R2 ; [+11]
       17 GETTABLEKS                       R1 R0 K3 ["tag"]
       19 GETUPVAL                         R2 3
       20 JUMPIFEQ                         R1 R2 ; [+6]
       22 GETTABLEKS                       R1 R0 K3 ["tag"]
       24 GETUPVAL                         R2 4
       25 JUMPIFNOTEQ                      R1 R2 ; [+26]
       27 GETUPVAL                         R1 5
       28 LOADNIL                          R2
       29 GETUPVAL                         R3 6
       30 LOADNIL                          R4
       31 GETUPVAL                         R6 7
       32 GETUPVAL                         R7 8
       33 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       35 GETIMPORT                        R5 K6 [bit32.bor]
       37 CALL                             R5 2 1
       38 MOVE                             R6 R0
       39 CALL                             R1 5 0
       40 GETUPVAL                         R1 9
       41 CALL                             R1 0 1
       42 JUMPIFNOT                        R1 ; [+8]
       43 GETUPVAL                         R1 10
       44 CALL                             R1 0 1
       45 GETUPVAL                         R2 11
       46 MOVE                             R3 R0
       47 GETTABLEKS                       R4 R0 K7 ["return_"]
       49 MOVE                             R5 R1
       50 CALL                             R2 3 0
       51 RETURN                           R0 0
       52 RETURN                           R0 0

PROTO_59:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+50]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+48]
        7 GETTABLEKS                       R1 R0 K3 ["tag"]
        9 GETUPVAL                         R2 1
       10 JUMPIFEQ                         R1 R2 ; [+16]
       12 GETTABLEKS                       R1 R0 K3 ["tag"]
       14 GETUPVAL                         R2 2
       15 JUMPIFEQ                         R1 R2 ; [+11]
       17 GETTABLEKS                       R1 R0 K3 ["tag"]
       19 GETUPVAL                         R2 3
       20 JUMPIFEQ                         R1 R2 ; [+6]
       22 GETTABLEKS                       R1 R0 K3 ["tag"]
       24 GETUPVAL                         R2 4
       25 JUMPIFNOTEQ                      R1 R2 ; [+52]
       27 GETUPVAL                         R1 5
       28 LOADNIL                          R2
       29 GETUPVAL                         R3 6
       30 LOADNIL                          R4
       31 GETUPVAL                         R6 7
       32 GETUPVAL                         R7 8
       33 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       35 GETIMPORT                        R5 K6 [bit32.bor]
       37 CALL                             R5 2 1
       38 MOVE                             R6 R0
       39 GETTABLEKS                       R7 R0 K7 ["return_"]
       41 CALL                             R1 6 0
       42 GETUPVAL                         R1 9
       43 CALL                             R1 0 1
       44 JUMPIFNOT                        R1 ; [+8]
       45 GETUPVAL                         R1 10
       46 CALL                             R1 0 1
       47 GETUPVAL                         R2 11
       48 MOVE                             R3 R0
       49 GETTABLEKS                       R4 R0 K7 ["return_"]
       51 MOVE                             R5 R1
       52 CALL                             R2 3 0
       53 RETURN                           R0 0
       54 RETURN                           R0 0
       55 GETTABLEKS                       R1 R0 K3 ["tag"]
       57 GETUPVAL                         R2 12
       58 JUMPIFNOTEQ                      R1 R2 ; [+19]
       60 GETTABLEKS                       R1 R0 K8 ["stateNode"]
       62 GETTABLEKS                       R3 R1 K9 ["componentWillUnmount"]
       64 FASTCALL1                        TYPEOF R3 ; [+2]
       65 GETIMPORT                        R2 K11 [typeof]
       67 CALL                             R2 1 1
       68 JUMPIFNOTEQKS                    R2 K12 ["function"] ; [+8]
       70 GETGLOBAL                        R2 K13 ["safelyCallComponentWillUnmount"]
       72 MOVE                             R3 R0
       73 MOVE                             R4 R1
       74 GETTABLEKS                       R5 R0 K7 ["return_"]
       76 CALL                             R2 3 0
       77 RETURN                           R0 0
       78 RETURN                           R0 0

PROTO_60:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+49]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+47]
        7 GETTABLEKS                       R1 R0 K3 ["tag"]
        9 GETUPVAL                         R2 1
       10 JUMPIFEQ                         R1 R2 ; [+16]
       12 GETTABLEKS                       R1 R0 K3 ["tag"]
       14 GETUPVAL                         R2 2
       15 JUMPIFEQ                         R1 R2 ; [+11]
       17 GETTABLEKS                       R1 R0 K3 ["tag"]
       19 GETUPVAL                         R2 3
       20 JUMPIFEQ                         R1 R2 ; [+6]
       22 GETTABLEKS                       R1 R0 K3 ["tag"]
       24 GETUPVAL                         R2 4
       25 JUMPIFNOTEQ                      R1 R2 ; [+28]
       27 GETUPVAL                         R1 5
       28 LOADNIL                          R2
       29 GETUPVAL                         R3 6
       30 LOADNIL                          R4
       31 GETUPVAL                         R6 7
       32 GETUPVAL                         R7 8
       33 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       35 GETIMPORT                        R5 K6 [bit32.bor]
       37 CALL                             R5 2 1
       38 MOVE                             R6 R0
       39 GETTABLEKS                       R7 R0 K7 ["return_"]
       41 CALL                             R1 6 0
       42 GETUPVAL                         R1 9
       43 CALL                             R1 0 1
       44 JUMPIFNOT                        R1 ; [+8]
       45 GETUPVAL                         R1 10
       46 CALL                             R1 0 1
       47 GETUPVAL                         R2 11
       48 MOVE                             R3 R0
       49 GETTABLEKS                       R4 R0 K7 ["return_"]
       51 MOVE                             R5 R1
       52 CALL                             R2 3 0
       53 RETURN                           R0 0
       54 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 LOADN                            R1 0
        3 DUPCLOSURE                       R2 K1 [PROTO_1]
        4 GETIMPORT                        R5 K3 [script]
        6 GETTABLEKS                       R4 R5 K4 ["Parent"]
        8 GETTABLEKS                       R3 R4 K4 ["Parent"]
       10 GETIMPORT                        R5 K6 [require]
       12 GETTABLEKS                       R6 R3 K7 ["Shared"]
       14 CALL                             R5 1 1
       15 GETTABLEKS                       R4 R5 K8 ["console"]
       17 GETIMPORT                        R5 K6 [require]
       19 GETTABLEKS                       R6 R3 K9 ["LuauPolyfill"]
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R6 R5 K10 ["Object"]
       24 GETTABLEKS                       R7 R5 K11 ["Set"]
       26 GETIMPORT                        R8 K6 [require]
       28 GETIMPORT                        R11 K3 [script]
       30 GETTABLEKS                       R10 R11 K4 ["Parent"]
       32 GETTABLEKS                       R9 R10 K12 ["ReactFiberHostConfig"]
       34 CALL                             R8 1 1
       35 GETIMPORT                        R9 K6 [require]
       37 GETIMPORT                        R12 K3 [script]
       39 GETTABLEKS                       R11 R12 K4 ["Parent"]
       41 GETTABLEKS                       R10 R11 K13 ["ReactInternalTypes"]
       43 CALL                             R9 1 1
       44 GETIMPORT                        R10 K6 [require]
       46 GETIMPORT                        R13 K3 [script]
       48 GETTABLEKS                       R12 R13 K4 ["Parent"]
       50 GETTABLEKS                       R11 R12 K14 ["ReactFiberSuspenseComponent.new"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K6 [require]
       55 GETIMPORT                        R14 K3 [script]
       57 GETTABLEKS                       R13 R14 K4 ["Parent"]
       59 GETTABLEKS                       R12 R13 K15 ["ReactUpdateQueue.new"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R13 R3 K7 ["Shared"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K6 [require]
       69 GETIMPORT                        R16 K3 [script]
       71 GETTABLEKS                       R15 R16 K4 ["Parent"]
       73 GETTABLEKS                       R14 R15 K16 ["ReactFiberOffscreenComponent"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K6 [require]
       78 GETIMPORT                        R17 K3 [script]
       80 GETTABLEKS                       R16 R17 K4 ["Parent"]
       82 GETTABLEKS                       R15 R16 K17 ["ReactHookEffectTags"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R17 K6 [require]
       87 GETTABLEKS                       R18 R3 K18 ["Scheduler"]
       89 CALL                             R17 1 1
       90 GETTABLEKS                       R16 R17 K19 ["tracing"]
       92 GETTABLEKS                       R15 R16 K20 ["unstable_wrap"]
       94 GETIMPORT                        R17 K6 [require]
       96 GETTABLEKS                       R18 R3 K7 ["Shared"]
       98 CALL                             R17 1 1
       99 GETTABLEKS                       R16 R17 K21 ["ReactFeatureFlags"]
      101 GETTABLEKS                       R17 R16 K22 ["enableSchedulerTracing"]
      103 GETTABLEKS                       R18 R16 K23 ["enableProfilerTimer"]
      105 GETTABLEKS                       R19 R16 K24 ["enableProfilerCommitHooks"]
      107 GETTABLEKS                       R20 R16 K25 ["enableSuspenseCallback"]
      109 GETTABLEKS                       R21 R16 K26 ["enableDoubleInvokingEffects"]
      111 GETIMPORT                        R22 K6 [require]
      113 GETIMPORT                        R25 K3 [script]
      115 GETTABLEKS                       R24 R25 K4 ["Parent"]
      117 GETTABLEKS                       R23 R24 K27 ["ReactWorkTags"]
      119 CALL                             R22 1 1
      120 GETTABLEKS                       R23 R22 K28 ["FunctionComponent"]
      122 GETTABLEKS                       R24 R22 K29 ["ForwardRef"]
      124 GETTABLEKS                       R25 R22 K30 ["ClassComponent"]
      126 GETTABLEKS                       R26 R22 K31 ["HostRoot"]
      128 GETTABLEKS                       R27 R22 K32 ["HostComponent"]
      130 GETTABLEKS                       R28 R22 K33 ["HostText"]
      132 GETTABLEKS                       R29 R22 K34 ["HostPortal"]
      134 GETTABLEKS                       R30 R22 K35 ["Profiler"]
      136 GETTABLEKS                       R31 R22 K36 ["SuspenseComponent"]
      138 GETTABLEKS                       R32 R22 K37 ["DehydratedFragment"]
      140 GETTABLEKS                       R33 R22 K38 ["IncompleteClassComponent"]
      142 GETTABLEKS                       R34 R22 K39 ["MemoComponent"]
      144 GETTABLEKS                       R35 R22 K40 ["SimpleMemoComponent"]
      146 GETTABLEKS                       R36 R22 K41 ["SuspenseListComponent"]
      148 GETTABLEKS                       R37 R22 K42 ["FundamentalComponent"]
      150 GETTABLEKS                       R38 R22 K43 ["ScopeComponent"]
      152 GETTABLEKS                       R39 R22 K44 ["Block"]
      154 GETTABLEKS                       R40 R22 K45 ["OffscreenComponent"]
      156 GETTABLEKS                       R41 R22 K46 ["LegacyHiddenComponent"]
      158 GETIMPORT                        R43 K6 [require]
      160 GETTABLEKS                       R44 R3 K7 ["Shared"]
      162 CALL                             R43 1 1
      163 GETTABLEKS                       R42 R43 K47 ["ReactErrorUtils"]
      165 GETTABLEKS                       R43 R42 K48 ["invokeGuardedCallback"]
      167 GETTABLEKS                       R44 R42 K49 ["hasCaughtError"]
      169 GETTABLEKS                       R45 R42 K50 ["clearCaughtError"]
      171 GETIMPORT                        R46 K6 [require]
      173 GETIMPORT                        R49 K3 [script]
      175 GETTABLEKS                       R48 R49 K4 ["Parent"]
      177 GETTABLEKS                       R47 R48 K51 ["ReactFiberFlags"]
      179 CALL                             R46 1 1
      180 GETTABLEKS                       R47 R46 K52 ["NoFlags"]
      182 GETTABLEKS                       R48 R46 K53 ["ContentReset"]
      184 GETTABLEKS                       R49 R46 K54 ["Placement"]
      186 GETTABLEKS                       R50 R46 K55 ["Snapshot"]
      188 GETTABLEKS                       R51 R46 K56 ["Update"]
      190 GETTABLEKS                       R52 R46 K57 ["Callback"]
      192 GETTABLEKS                       R53 R46 K58 ["LayoutMask"]
      194 GETTABLEKS                       R54 R46 K59 ["PassiveMask"]
      196 GETTABLEKS                       R55 R46 K60 ["Ref"]
      198 GETIMPORT                        R57 K6 [require]
      200 GETTABLEKS                       R58 R3 K7 ["Shared"]
      202 CALL                             R57 1 1
      203 GETTABLEKS                       R56 R57 K61 ["getComponentName"]
      205 GETIMPORT                        R58 K6 [require]
      207 GETTABLEKS                       R59 R3 K7 ["Shared"]
      209 CALL                             R58 1 1
      210 GETTABLEKS                       R57 R58 K62 ["invariant"]
      212 GETIMPORT                        R58 K6 [require]
      214 GETIMPORT                        R61 K3 [script]
      216 GETTABLEKS                       R60 R61 K4 ["Parent"]
      218 GETTABLEKS                       R59 R60 K63 ["ReactCurrentFiber"]
      220 CALL                             R58 1 1
      221 GETTABLEKS                       R59 R58 K64 ["current"]
      223 GETTABLEKS                       R60 R58 K65 ["resetCurrentFiber"]
      225 GETTABLEKS                       R61 R58 K66 ["setCurrentFiber"]
      227 GETIMPORT                        R63 K6 [require]
      229 GETIMPORT                        R66 K3 [script]
      231 GETTABLEKS                       R65 R66 K4 ["Parent"]
      233 GETTABLEKS                       R64 R65 K67 ["ReactFiberDevToolsHook.new"]
      235 CALL                             R63 1 1
      236 GETTABLEKS                       R62 R63 K68 ["onCommitUnmount"]
      238 GETIMPORT                        R64 K6 [require]
      240 GETIMPORT                        R67 K3 [script]
      242 GETTABLEKS                       R66 R67 K4 ["Parent"]
      244 GETTABLEKS                       R65 R66 K69 ["ReactFiberLazyComponent.new"]
      246 CALL                             R64 1 1
      247 GETTABLEKS                       R63 R64 K70 ["resolveDefaultProps"]
      249 GETIMPORT                        R64 K6 [require]
      251 GETIMPORT                        R67 K3 [script]
      253 GETTABLEKS                       R66 R67 K4 ["Parent"]
      255 GETTABLEKS                       R65 R66 K71 ["ReactProfilerTimer.new"]
      257 CALL                             R64 1 1
      258 GETTABLEKS                       R65 R64 K72 ["startLayoutEffectTimer"]
      260 GETTABLEKS                       R66 R64 K73 ["recordPassiveEffectDuration"]
      262 GETTABLEKS                       R67 R64 K74 ["recordLayoutEffectDuration"]
      264 GETTABLEKS                       R68 R64 K75 ["startPassiveEffectTimer"]
      266 GETTABLEKS                       R69 R64 K76 ["getCommitTime"]
      268 GETIMPORT                        R71 K6 [require]
      270 GETIMPORT                        R74 K3 [script]
      272 GETTABLEKS                       R73 R74 K4 ["Parent"]
      274 GETTABLEKS                       R72 R73 K77 ["ReactTypeOfMode"]
      276 CALL                             R71 1 1
      277 GETTABLEKS                       R70 R71 K78 ["ProfileMode"]
      279 GETTABLEKS                       R71 R11 K79 ["commitUpdateQueue"]
      281 GETTABLEKS                       R72 R8 K80 ["getPublicInstance"]
      283 GETTABLEKS                       R73 R8 K81 ["supportsMutation"]
      285 GETTABLEKS                       R74 R8 K82 ["supportsPersistence"]
      287 GETTABLEKS                       R75 R8 K83 ["supportsHydration"]
      289 GETTABLEKS                       R76 R8 K84 ["commitMount"]
      291 GETTABLEKS                       R77 R8 K85 ["commitUpdate"]
      293 GETTABLEKS                       R78 R8 K86 ["resetTextContent"]
      295 GETTABLEKS                       R79 R8 K87 ["commitTextUpdate"]
      297 GETTABLEKS                       R80 R8 K88 ["appendChild"]
      299 GETTABLEKS                       R81 R8 K89 ["appendChildToContainer"]
      301 GETTABLEKS                       R82 R8 K90 ["insertBefore"]
      303 GETTABLEKS                       R83 R8 K91 ["insertInContainerBefore"]
      305 GETTABLEKS                       R84 R8 K92 ["removeChild"]
      307 GETTABLEKS                       R85 R8 K93 ["removeChildFromContainer"]
      309 GETTABLEKS                       R86 R8 K94 ["hideInstance"]
      311 GETTABLEKS                       R87 R8 K95 ["hideTextInstance"]
      313 GETTABLEKS                       R88 R8 K96 ["unhideInstance"]
      315 GETTABLEKS                       R89 R8 K97 ["unhideTextInstance"]
      317 GETTABLEKS                       R90 R8 K98 ["commitHydratedSuspenseInstance"]
      319 GETTABLEKS                       R91 R8 K99 ["clearContainer"]
      321 LOADNIL                          R92
      322 NEWCLOSURE                       R93 P2
      323 CAPTURE                          REF R92
      324 NEWCLOSURE                       R94 P3
      325 CAPTURE                          REF R92
      326 DUPCLOSURE                       R95 K100 [PROTO_4]
      327 CAPTURE                          VAL R4
      328 DUPCLOSURE                       R96 K101 [PROTO_5]
      329 CAPTURE                          VAL R4
      330 GETTABLEKS                       R97 R14 K52 ["NoFlags"]
      332 GETTABLEKS                       R98 R14 K102 ["HasEffect"]
      334 GETTABLEKS                       R99 R14 K103 ["Layout"]
      336 GETTABLEKS                       R100 R14 K104 ["Passive"]
      338 LOADNIL                          R101
      339 NEWCLOSURE                       R102 P6
      340 CAPTURE                          REF R101
      341 LOADNIL                          R103
      342 LOADNIL                          R104
      343 LOADNIL                          R105
      344 LOADNIL                          R106
      345 LOADNIL                          R107
      346 LOADNIL                          R108
      347 LOADNIL                          R109
      348 LOADNIL                          R110
      349 LOADNIL                          R111
      350 LOADNIL                          R112
      351 LOADNIL                          R113
      352 DUPCLOSURE                       R114 K105 [PROTO_8]
      353 CAPTURE                          VAL R18
      354 CAPTURE                          VAL R19
      355 CAPTURE                          VAL R70
      356 CAPTURE                          VAL R65
      357 CAPTURE                          VAL R67
      358 NEWCLOSURE                       R115 P8
      359 CAPTURE                          VAL R114
      360 CAPTURE                          REF R96
      361 SETGLOBAL                        R115 K106 ["safelyCallComponentWillUnmount"]
      363 NEWCLOSURE                       R115 P9
      364 CAPTURE                          REF R96
      365 NEWCLOSURE                       R116 P10
      366 CAPTURE                          REF R96
      367 DUPCLOSURE                       R117 K107 [PROTO_12]
      368 CAPTURE                          VAL R23
      369 CAPTURE                          VAL R24
      370 CAPTURE                          VAL R35
      371 CAPTURE                          VAL R39
      372 CAPTURE                          VAL R25
      373 CAPTURE                          VAL R50
      374 CAPTURE                          VAL R102
      375 CAPTURE                          VAL R4
      376 CAPTURE                          VAL R56
      377 CAPTURE                          VAL R63
      378 CAPTURE                          VAL R26
      379 CAPTURE                          VAL R73
      380 CAPTURE                          VAL R91
      381 CAPTURE                          VAL R27
      382 CAPTURE                          VAL R28
      383 CAPTURE                          VAL R29
      384 CAPTURE                          VAL R33
      385 CAPTURE                          VAL R57
      386 NEWCLOSURE                       R118 P12
      387 CAPTURE                          REF R96
      388 DUPCLOSURE                       R119 K108 [PROTO_14]
      389 CAPTURE                          VAL R4
      390 DUPCLOSURE                       R120 K109 [PROTO_17]
      391 CAPTURE                          VAL R18
      392 CAPTURE                          VAL R19
      393 CAPTURE                          VAL R30
      394 CAPTURE                          VAL R69
      395 CAPTURE                          VAL R17
      396 SETGLOBAL                        R120 K110 ["commitProfilerPassiveEffect"]
      398 NEWCLOSURE                       R120 P15
      399 CAPTURE                          REF R96
      400 CAPTURE                          REF R95
      401 CAPTURE                          VAL R30
      402 CAPTURE                          VAL R18
      403 CAPTURE                          VAL R19
      404 CAPTURE                          REF R113
      405 CAPTURE                          VAL R53
      406 CAPTURE                          VAL R47
      407 CAPTURE                          VAL R59
      408 CAPTURE                          VAL R61
      409 CAPTURE                          VAL R43
      410 CAPTURE                          VAL R120
      411 CAPTURE                          VAL R44
      412 CAPTURE                          VAL R45
      413 CAPTURE                          VAL R60
      414 CAPTURE                          VAL R51
      415 CAPTURE                          VAL R52
      416 CAPTURE                          VAL R58
      417 CAPTURE                          REF R1
      418 CAPTURE                          VAL R23
      419 CAPTURE                          VAL R24
      420 CAPTURE                          VAL R35
      421 CAPTURE                          VAL R39
      422 CAPTURE                          VAL R70
      423 CAPTURE                          VAL R65
      424 CAPTURE                          VAL R119
      425 CAPTURE                          VAL R99
      426 CAPTURE                          VAL R98
      427 CAPTURE                          VAL R67
      428 CAPTURE                          VAL R54
      429 CAPTURE                          VAL R25
      430 CAPTURE                          REF R109
      431 CAPTURE                          VAL R26
      432 CAPTURE                          REF R107
      433 CAPTURE                          VAL R27
      434 CAPTURE                          REF R108
      435 CAPTURE                          VAL R31
      436 CAPTURE                          VAL R37
      437 CAPTURE                          VAL R29
      438 CAPTURE                          VAL R28
      439 CAPTURE                          VAL R33
      440 CAPTURE                          VAL R41
      441 CAPTURE                          VAL R40
      442 CAPTURE                          VAL R38
      443 CAPTURE                          VAL R36
      444 CAPTURE                          VAL R57
      445 CAPTURE                          VAL R55
      446 DUPCLOSURE                       R121 K111 [PROTO_24]
      447 CAPTURE                          VAL R18
      448 CAPTURE                          VAL R69
      449 CAPTURE                          VAL R51
      450 CAPTURE                          VAL R52
      451 CAPTURE                          VAL R47
      452 CAPTURE                          VAL R17
      453 CAPTURE                          VAL R19
      454 SETGLOBAL                        R121 K112 ["commitLayoutEffectsForProfiler"]
      456 DUPCLOSURE                       R109 K113 [PROTO_27]
      457 CAPTURE                          VAL R51
      458 CAPTURE                          VAL R102
      459 CAPTURE                          VAL R4
      460 CAPTURE                          VAL R56
      461 CAPTURE                          VAL R18
      462 CAPTURE                          VAL R19
      463 CAPTURE                          VAL R70
      464 CAPTURE                          VAL R65
      465 CAPTURE                          VAL R67
      466 CAPTURE                          VAL R63
      467 CAPTURE                          VAL R71
      468 DUPCLOSURE                       R107 K114 [PROTO_28]
      469 CAPTURE                          VAL R27
      470 CAPTURE                          VAL R72
      471 CAPTURE                          VAL R25
      472 CAPTURE                          VAL R71
      473 DUPCLOSURE                       R108 K115 [PROTO_29]
      474 CAPTURE                          VAL R51
      475 CAPTURE                          VAL R76
      476 DUPCLOSURE                       R121 K116 [PROTO_30]
      477 CAPTURE                          VAL R73
      478 CAPTURE                          VAL R27
      479 CAPTURE                          VAL R86
      480 CAPTURE                          VAL R88
      481 CAPTURE                          VAL R28
      482 CAPTURE                          VAL R87
      483 CAPTURE                          VAL R89
      484 CAPTURE                          VAL R40
      485 CAPTURE                          VAL R41
      486 DUPCLOSURE                       R122 K117 [PROTO_31]
      487 CAPTURE                          VAL R27
      488 CAPTURE                          VAL R72
      489 CAPTURE                          VAL R4
      490 CAPTURE                          VAL R56
      491 SETGLOBAL                        R122 K118 ["commitAttachRef"]
      493 DUPCLOSURE                       R122 K119 [PROTO_32]
      494 SETGLOBAL                        R122 K120 ["commitDetachRef"]
      496 NEWCLOSURE                       R112 P23
      497 CAPTURE                          VAL R62
      498 CAPTURE                          VAL R23
      499 CAPTURE                          VAL R24
      500 CAPTURE                          VAL R34
      501 CAPTURE                          VAL R35
      502 CAPTURE                          VAL R39
      503 CAPTURE                          VAL R99
      504 CAPTURE                          VAL R97
      505 CAPTURE                          VAL R18
      506 CAPTURE                          VAL R19
      507 CAPTURE                          VAL R70
      508 CAPTURE                          VAL R65
      509 CAPTURE                          REF R96
      510 CAPTURE                          VAL R67
      511 CAPTURE                          VAL R25
      512 CAPTURE                          VAL R27
      513 CAPTURE                          VAL R29
      514 CAPTURE                          VAL R73
      515 CAPTURE                          REF R110
      516 CAPTURE                          VAL R74
      517 CAPTURE                          VAL R0
      518 NEWCLOSURE                       R111 P24
      519 CAPTURE                          REF R112
      520 CAPTURE                          VAL R73
      521 CAPTURE                          VAL R29
      522 DUPCLOSURE                       R122 K121 [PROTO_35]
      523 NEWCLOSURE                       R123 P26
      524 CAPTURE                          REF R103
      525 CAPTURE                          VAL R57
      526 DUPCLOSURE                       R103 K122 [PROTO_37]
      527 CAPTURE                          VAL R27
      528 CAPTURE                          VAL R26
      529 CAPTURE                          VAL R29
      530 NEWCLOSURE                       R104 P28
      531 CAPTURE                          REF R103
      532 CAPTURE                          VAL R27
      533 CAPTURE                          VAL R28
      534 CAPTURE                          VAL R32
      535 CAPTURE                          VAL R49
      536 CAPTURE                          VAL R29
      537 NEWCLOSURE                       R124 P29
      538 CAPTURE                          VAL R73
      539 CAPTURE                          REF R103
      540 CAPTURE                          VAL R57
      541 CAPTURE                          VAL R27
      542 CAPTURE                          VAL R26
      543 CAPTURE                          VAL R29
      544 CAPTURE                          VAL R48
      545 CAPTURE                          VAL R78
      546 CAPTURE                          REF R104
      547 CAPTURE                          REF R106
      548 CAPTURE                          REF R105
      549 NEWCLOSURE                       R106 P30
      550 CAPTURE                          VAL R27
      551 CAPTURE                          VAL R28
      552 CAPTURE                          VAL R83
      553 CAPTURE                          VAL R81
      554 CAPTURE                          VAL R29
      555 CAPTURE                          REF R106
      556 NEWCLOSURE                       R105 P31
      557 CAPTURE                          VAL R27
      558 CAPTURE                          VAL R28
      559 CAPTURE                          VAL R82
      560 CAPTURE                          VAL R80
      561 CAPTURE                          VAL R29
      562 CAPTURE                          REF R105
      563 NEWCLOSURE                       R110 P32
      564 CAPTURE                          VAL R27
      565 CAPTURE                          VAL R26
      566 CAPTURE                          VAL R29
      567 CAPTURE                          VAL R28
      568 CAPTURE                          REF R111
      569 CAPTURE                          VAL R85
      570 CAPTURE                          VAL R84
      571 CAPTURE                          REF R112
      572 NEWCLOSURE                       R125 P33
      573 CAPTURE                          REF R110
      574 DUPCLOSURE                       R126 K123 [PROTO_45]
      575 CAPTURE                          VAL R23
      576 CAPTURE                          VAL R24
      577 CAPTURE                          VAL R34
      578 CAPTURE                          VAL R35
      579 CAPTURE                          VAL R39
      580 CAPTURE                          VAL R18
      581 CAPTURE                          VAL R19
      582 CAPTURE                          VAL R70
      583 CAPTURE                          VAL R65
      584 CAPTURE                          VAL R118
      585 CAPTURE                          VAL R99
      586 CAPTURE                          VAL R98
      587 CAPTURE                          VAL R67
      588 CAPTURE                          VAL R25
      589 CAPTURE                          VAL R27
      590 CAPTURE                          VAL R77
      591 CAPTURE                          VAL R28
      592 CAPTURE                          VAL R57
      593 CAPTURE                          VAL R79
      594 CAPTURE                          VAL R26
      595 CAPTURE                          VAL R75
      596 CAPTURE                          VAL R0
      597 CAPTURE                          VAL R30
      598 CAPTURE                          VAL R31
      599 CAPTURE                          VAL R36
      600 CAPTURE                          VAL R33
      601 CAPTURE                          VAL R40
      602 CAPTURE                          VAL R41
      603 CAPTURE                          VAL R121
      604 NEWCLOSURE                       R127 P35
      605 CAPTURE                          REF R92
      606 CAPTURE                          VAL R73
      607 CAPTURE                          VAL R121
      608 CAPTURE                          VAL R20
      609 CAPTURE                          VAL R6
      610 CAPTURE                          VAL R4
      611 SETGLOBAL                        R127 K124 ["commitSuspenseComponent"]
      613 DUPCLOSURE                       R127 K125 [PROTO_47]
      614 CAPTURE                          VAL R75
      615 CAPTURE                          VAL R90
      616 CAPTURE                          VAL R20
      617 SETGLOBAL                        R127 K126 ["commitSuspenseHydrationCallbacks"]
      619 DUPCLOSURE                       R127 K127 [PROTO_51]
      620 CAPTURE                          VAL R7
      621 CAPTURE                          VAL R93
      622 CAPTURE                          VAL R17
      623 CAPTURE                          VAL R15
      624 SETGLOBAL                        R127 K128 ["attachSuspenseRetryListeners"]
      626 DUPCLOSURE                       R127 K129 [PROTO_52]
      627 SETGLOBAL                        R127 K130 ["isSuspenseBoundaryBeingHidden"]
      629 DUPCLOSURE                       R127 K131 [PROTO_53]
      630 CAPTURE                          VAL R73
      631 CAPTURE                          VAL R78
      632 SETGLOBAL                        R127 K132 ["commitResetTextContent"]
      634 DUPCLOSURE                       R127 K133 [PROTO_54]
      635 CAPTURE                          VAL R23
      636 CAPTURE                          VAL R24
      637 CAPTURE                          VAL R35
      638 CAPTURE                          VAL R39
      639 CAPTURE                          VAL R18
      640 CAPTURE                          VAL R19
      641 CAPTURE                          VAL R70
      642 CAPTURE                          VAL R68
      643 CAPTURE                          VAL R118
      644 CAPTURE                          VAL R100
      645 CAPTURE                          VAL R98
      646 CAPTURE                          VAL R66
      647 DUPCLOSURE                       R128 K134 [PROTO_55]
      648 CAPTURE                          VAL R23
      649 CAPTURE                          VAL R24
      650 CAPTURE                          VAL R35
      651 CAPTURE                          VAL R39
      652 CAPTURE                          VAL R18
      653 CAPTURE                          VAL R19
      654 CAPTURE                          VAL R70
      655 CAPTURE                          VAL R68
      656 CAPTURE                          VAL R118
      657 CAPTURE                          VAL R100
      658 CAPTURE                          VAL R66
      659 DUPCLOSURE                       R129 K135 [PROTO_56]
      660 CAPTURE                          VAL R23
      661 CAPTURE                          VAL R24
      662 CAPTURE                          VAL R35
      663 CAPTURE                          VAL R39
      664 CAPTURE                          VAL R18
      665 CAPTURE                          VAL R19
      666 CAPTURE                          VAL R70
      667 CAPTURE                          VAL R68
      668 CAPTURE                          VAL R119
      669 CAPTURE                          VAL R100
      670 CAPTURE                          VAL R98
      671 CAPTURE                          VAL R66
      672 CAPTURE                          VAL R30
      673 NEWCLOSURE                       R130 P43
      674 CAPTURE                          VAL R21
      675 CAPTURE                          VAL R23
      676 CAPTURE                          VAL R24
      677 CAPTURE                          VAL R35
      678 CAPTURE                          VAL R39
      679 CAPTURE                          VAL R43
      680 CAPTURE                          VAL R119
      681 CAPTURE                          VAL R99
      682 CAPTURE                          VAL R98
      683 CAPTURE                          VAL R44
      684 CAPTURE                          VAL R45
      685 CAPTURE                          REF R96
      686 CAPTURE                          VAL R25
      687 SETGLOBAL                        R130 K136 ["invokeLayoutEffectMountInDEV"]
      689 NEWCLOSURE                       R130 P44
      690 CAPTURE                          VAL R21
      691 CAPTURE                          VAL R23
      692 CAPTURE                          VAL R24
      693 CAPTURE                          VAL R35
      694 CAPTURE                          VAL R39
      695 CAPTURE                          VAL R43
      696 CAPTURE                          VAL R119
      697 CAPTURE                          VAL R100
      698 CAPTURE                          VAL R98
      699 CAPTURE                          VAL R44
      700 CAPTURE                          VAL R45
      701 CAPTURE                          REF R96
      702 SETGLOBAL                        R130 K137 ["invokePassiveEffectMountInDEV"]
      704 NEWCLOSURE                       R130 P45
      705 CAPTURE                          VAL R21
      706 CAPTURE                          VAL R23
      707 CAPTURE                          VAL R24
      708 CAPTURE                          VAL R35
      709 CAPTURE                          VAL R39
      710 CAPTURE                          VAL R43
      711 CAPTURE                          VAL R118
      712 CAPTURE                          VAL R99
      713 CAPTURE                          VAL R98
      714 CAPTURE                          VAL R44
      715 CAPTURE                          VAL R45
      716 CAPTURE                          REF R96
      717 CAPTURE                          VAL R25
      718 SETGLOBAL                        R130 K138 ["invokeLayoutEffectUnmountInDEV"]
      720 NEWCLOSURE                       R130 P46
      721 CAPTURE                          VAL R21
      722 CAPTURE                          VAL R23
      723 CAPTURE                          VAL R24
      724 CAPTURE                          VAL R35
      725 CAPTURE                          VAL R39
      726 CAPTURE                          VAL R43
      727 CAPTURE                          VAL R118
      728 CAPTURE                          VAL R100
      729 CAPTURE                          VAL R98
      730 CAPTURE                          VAL R44
      731 CAPTURE                          VAL R45
      732 CAPTURE                          REF R96
      733 SETGLOBAL                        R130 K139 ["invokePassiveEffectUnmountInDEV"]
      735 DUPTABLE                         R130 K149 [{"safelyCallDestroy", "commitBeforeMutationLifeCycles", "commitResetTextContent", "commitPlacement", "commitDeletion", "commitWork", "commitAttachRef", "commitDetachRef", "commitPassiveUnmount", "commitPassiveUnmountInsideDeletedTree", "commitPassiveMount", "invokeLayoutEffectMountInDEV", "invokeLayoutEffectUnmountInDEV", "invokePassiveEffectMountInDEV", "invokePassiveEffectUnmountInDEV", "isSuspenseBoundaryBeingHidden", "recursivelyCommitLayoutEffects"}]
      736 SETTABLEKS                       R116 R130 K140 ["safelyCallDestroy"]
      738 SETTABLEKS                       R117 R130 K141 ["commitBeforeMutationLifeCycles"]
      740 GETGLOBAL                        R131 K132 ["commitResetTextContent"]
      742 SETTABLEKS                       R131 R130 K132 ["commitResetTextContent"]
      744 SETTABLEKS                       R124 R130 K142 ["commitPlacement"]
      746 SETTABLEKS                       R125 R130 K143 ["commitDeletion"]
      748 SETTABLEKS                       R126 R130 K144 ["commitWork"]
      750 GETGLOBAL                        R131 K118 ["commitAttachRef"]
      752 SETTABLEKS                       R131 R130 K118 ["commitAttachRef"]
      754 GETGLOBAL                        R131 K120 ["commitDetachRef"]
      756 SETTABLEKS                       R131 R130 K120 ["commitDetachRef"]
      758 SETTABLEKS                       R127 R130 K145 ["commitPassiveUnmount"]
      760 SETTABLEKS                       R128 R130 K146 ["commitPassiveUnmountInsideDeletedTree"]
      762 SETTABLEKS                       R129 R130 K147 ["commitPassiveMount"]
      764 GETGLOBAL                        R131 K136 ["invokeLayoutEffectMountInDEV"]
      766 SETTABLEKS                       R131 R130 K136 ["invokeLayoutEffectMountInDEV"]
      768 GETGLOBAL                        R131 K138 ["invokeLayoutEffectUnmountInDEV"]
      770 SETTABLEKS                       R131 R130 K138 ["invokeLayoutEffectUnmountInDEV"]
      772 GETGLOBAL                        R131 K137 ["invokePassiveEffectMountInDEV"]
      774 SETTABLEKS                       R131 R130 K137 ["invokePassiveEffectMountInDEV"]
      776 GETGLOBAL                        R131 K139 ["invokePassiveEffectUnmountInDEV"]
      778 SETTABLEKS                       R131 R130 K139 ["invokePassiveEffectUnmountInDEV"]
      780 GETGLOBAL                        R131 K130 ["isSuspenseBoundaryBeingHidden"]
      782 SETTABLEKS                       R131 R130 K130 ["isSuspenseBoundaryBeingHidden"]
      784 SETTABLEKS                       R120 R130 K148 ["recursivelyCommitLayoutEffects"]
      786 CLOSEUPVALS                      R1
      787 RETURN                           R130 1
