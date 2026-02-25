PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["render"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["createElement"]
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K3 [{"Node"}]
        8 SETTABLEKS                       R0 R4 K2 ["Node"]
       10 CALL                             R3 1 -1
       11 CALL                             R2 -1 -1
       12 CALL                             R1 -1 1
       13 GETTABLEKS                       R2 R1 K4 ["container"]
       15 SETUPVAL                         R2 3
       16 GETUPVAL                         R2 3
       17 JUMPIFNOT                        R2 ; [+9]
       18 GETUPVAL                         R2 3
       19 LOADK                            R4 K5 ["ScreenGui"]
       20 NAMECALL                         R2 R2 K6 ["FindFirstAncestorWhichIsA"]
       22 CALL                             R2 2 1
       23 JUMPIFNOT                        R2 ; [+3]
       24 GETTABLEKS                       R3 R2 K7 ["Parent"]
       26 SETUPVAL                         R3 4
       27 GETIMPORT                        R2 K10 [task.wait]
       29 CALL                             R2 0 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        7 LOADK                            R2 K0 ["Container not mounted, ensure render is called"]
        8 GETIMPORT                        R0 K2 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        7 LOADK                            R2 K0 ["GUI root not available, ensure render is called"]
        8 GETIMPORT                        R0 K2 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Container not mounted, ensure render is called"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R0 0
       12 LOADK                            R2 K3 ["Node"]
       13 LOADB                            R3 1
       14 NAMECALL                         R0 R0 K4 ["FindFirstChild"]
       16 CALL                             R0 3 1
       17 FASTCALL2K                       ASSERT R0 K5 ; [+5]
       19 MOVE                             R2 R0
       20 LOADK                            R3 K5 ["Node not found"]
       21 GETIMPORT                        R1 K2 [assert]
       23 CALL                             R1 2 0
       24 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R5 1
        2 JUMPIFNOTEQKNIL                  R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        8 LOADK                            R5 K0 ["Container not mounted, ensure render is called"]
        9 GETIMPORT                        R3 K2 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R2 1
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R0 R1 K3 ["getByText"]
       16 GETUPVAL                         R1 2
       17 DUPTABLE                         R2 K5 [{"exact"}]
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R2 K4 ["exact"]
       21 CALL                             R0 2 -1
       22 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R5 1
        2 JUMPIFNOTEQKNIL                  R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        8 LOADK                            R5 K0 ["Container not mounted, ensure render is called"]
        9 GETIMPORT                        R3 K2 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R2 1
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R0 R1 K3 ["getByDisplayValue"]
       16 GETUPVAL                         R1 2
       17 DUPTABLE                         R2 K5 [{"exact"}]
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R2 K4 ["exact"]
       21 CALL                             R0 2 -1
       22 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R2 1
        9 GETIMPORT                        R3 K1 [pcall]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 CALL                             R3 1 2
       16 JUMPIFNOT                        R3 ; [+1]
       17 RETURN                           R4 1
       18 GETIMPORT                        R5 K3 [error]
       20 LOADK                            R7 K4 ["No text object found for message \"%*\".\n%*\n%*"]
       21 MOVE                             R9 R0
       22 MOVE                             R10 R2
       23 MOVE                             R11 R4
       24 NAMECALL                         R7 R7 K5 ["format"]
       26 CALL                             R7 4 1
       27 MOVE                             R6 R7
       28 CALL                             R5 1 0
       29 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R6 1
        2 JUMPIFNOTEQKNIL                  R6 ; [+2]
        4 LOADB                            R5 0 +1
        5 LOADB                            R5 1
        6 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        8 LOADK                            R6 K0 ["Container not mounted, ensure render is called"]
        9 GETIMPORT                        R4 K2 [assert]
       11 CALL                             R4 2 0
       12 GETUPVAL                         R3 1
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R1 R2 K3 ["queryByTestId"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R5 1
        2 JUMPIFNOTEQKNIL                  R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        8 LOADK                            R5 K0 ["Container not mounted, ensure render is called"]
        9 GETIMPORT                        R3 K2 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R2 1
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R0 R1 K3 ["queryByTestId"]
       16 LOADK                            R1 K4 ["--knowledge-tutorials-NextButton"]
       17 CALL                             R0 1 1
       18 FASTCALL2K                       ASSERT R0 K5 ; [+5]
       20 MOVE                             R2 R0
       21 LOADK                            R3 K5 ["Next button not found"]
       22 GETIMPORT                        R1 K2 [assert]
       24 CALL                             R1 2 0
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K6 ["click"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R5 1
        2 JUMPIFNOTEQKNIL                  R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        8 LOADK                            R5 K0 ["Container not mounted, ensure render is called"]
        9 GETIMPORT                        R3 K2 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R2 1
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R0 R1 K3 ["queryByTestId"]
       16 LOADK                            R1 K4 ["--knowledge-tutorials-PrevButton"]
       17 CALL                             R0 1 1
       18 FASTCALL2K                       ASSERT R0 K5 ; [+5]
       20 MOVE                             R2 R0
       21 LOADK                            R3 K5 ["Prev button not found"]
       22 GETIMPORT                        R1 K2 [assert]
       24 CALL                             R1 2 0
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K6 ["click"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R5 1
        2 JUMPIFNOTEQKNIL                  R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        8 LOADK                            R5 K0 ["Container not mounted, ensure render is called"]
        9 GETIMPORT                        R3 K2 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R2 1
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R0 R1 K3 ["queryByTestId"]
       16 LOADK                            R1 K4 ["--knowledge-tutorials-TableOfContentsButton"]
       17 CALL                             R0 1 1
       18 FASTCALL2K                       ASSERT R0 K5 ; [+5]
       20 MOVE                             R2 R0
       21 LOADK                            R3 K5 ["Table of contents button not found"]
       22 GETIMPORT                        R1 K2 [assert]
       24 CALL                             R1 2 0
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K6 ["click"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R6 1
        2 JUMPIFNOTEQKNIL                  R6 ; [+2]
        4 LOADB                            R5 0 +1
        5 LOADB                            R5 1
        6 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        8 LOADK                            R6 K0 ["Container not mounted, ensure render is called"]
        9 GETIMPORT                        R4 K2 [assert]
       11 CALL                             R4 2 0
       12 GETUPVAL                         R3 1
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R1 R2 K3 ["queryByTestId"]
       16 LOADK                            R3 K4 ["--knowledge-tutorials-SectionButton_%*"]
       17 MOVE                             R5 R0
       18 NAMECALL                         R3 R3 K5 ["format"]
       20 CALL                             R3 2 1
       21 MOVE                             R2 R3
       22 CALL                             R1 1 1
       23 FASTCALL2K                       ASSERT R1 K6 ; [+5]
       25 MOVE                             R3 R1
       26 LOADK                            R4 K6 ["Section button not found"]
       27 GETIMPORT                        R2 K2 [assert]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R2 R3 K7 ["click"]
       33 MOVE                             R3 R1
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R2 ; [+9]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["keyDown"]
        4 MOVE                             R4 R0
        5 DUPTABLE                         R5 K2 [{"key"}]
        6 SETTABLEKS                       R1 R5 K1 ["key"]
        8 CALL                             R3 2 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["keyUp"]
       13 MOVE                             R4 R0
       14 DUPTABLE                         R5 K2 [{"key"}]
       15 SETTABLEKS                       R1 R5 K1 ["key"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R3 K0 ["ScrollingFrame"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 MOVE                             R3 R1
        5 JUMPIFNOT                        R3 ; [+4]
        6 LOADK                            R5 K0 ["ScrollingFrame"]
        7 NAMECALL                         R3 R1 K2 ["IsA"]
        9 CALL                             R3 2 1
       10 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       12 LOADK                            R4 K3 ["Scroll area not found for widget"]
       13 GETIMPORT                        R2 K5 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R3 R1 K6 ["AbsolutePosition"]
       18 GETTABLEKS                       R5 R0 K6 ["AbsolutePosition"]
       20 GETTABLEKS                       R7 R0 K8 ["AbsoluteSize"]
       22 DIVK                             R6 R7 K7 [2]
       23 ADD                              R4 R5 R6
       24 SUB                              R2 R3 R4
       25 GETTABLEKS                       R3 R1 K9 ["CanvasPosition"]
       27 SUB                              R3 R3 R2
       28 SETTABLEKS                       R3 R1 K9 ["CanvasPosition"]
       30 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["spyOn"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["Util"]
        6 GETTABLEKS                       R3 R4 K2 ["MarkdownParser"]
        8 LOADK                            R4 K3 ["parse"]
        9 CALL                             R2 2 1
       10 GETTABLEKS                       R1 R2 K4 ["mockImplementation"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_16:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+35]
        2 GETTABLEKS                       R3 R2 K0 ["Parent"]
        4 LOADK                            R7 K1 ["Parent not found for element: "]
        5 NAMECALL                         R8 R2 K2 ["GetFullName"]
        7 CALL                             R8 1 1
        8 CONCAT                           R6 R7 R8
        9 FASTCALL2                        ASSERT R3 R6 ; [+4]
       11 MOVE                             R5 R3
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 LOADK                            R7 K5 ["GuiObject"]
       16 NAMECALL                         R5 R3 K6 ["IsA"]
       18 CALL                             R5 2 1
       19 LOADK                            R7 K7 ["Parent is not a GuiObject: "]
       20 NAMECALL                         R8 R3 K2 ["GetFullName"]
       22 CALL                             R8 1 1
       23 CONCAT                           R6 R7 R8
       24 FASTCALL2                        ASSERT R5 R6 ; [+3]
       26 GETIMPORT                        R4 K4 [assert]
       28 CALL                             R4 2 0
       29 MOVE                             R2 R3
       30 MOVE                             R6 R1
       31 NAMECALL                         R4 R2 K8 ["HasTag"]
       33 CALL                             R4 2 1
       34 JUMPIFNOT                        R4 ; [+1]
       35 RETURN                           R2 1
       36 JUMPBACK                         ; [-36]
       37 LOADK                            R6 K9 ["Ancestor with tag %* not found for element %*"]
       38 MOVE                             R8 R1
       39 NAMECALL                         R9 R0 K2 ["GetFullName"]
       41 CALL                             R9 1 1
       42 NAMECALL                         R6 R6 K10 ["format"]
       44 CALL                             R6 3 1
       45 MOVE                             R5 R6
       46 FASTCALL2                        ASSERT R2 R5 ; [+4]
       48 MOVE                             R4 R2
       49 GETIMPORT                        R3 K4 [assert]
       51 CALL                             R3 2 0
       52 RETURN                           R2 1

PROTO_17:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          REF R0
        7 CAPTURE                          REF R1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          REF R0
       10 NEWCLOSURE                       R4 P2
       11 CAPTURE                          REF R1
       12 NEWCLOSURE                       R5 P3
       13 CAPTURE                          REF R0
       14 NEWCLOSURE                       R6 P4
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          REF R0
       17 NEWCLOSURE                       R7 P5
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          REF R0
       20 NEWCLOSURE                       R8 P6
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          REF R0
       23 CAPTURE                          UPVAL U4
       24 NEWCLOSURE                       R9 P7
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          REF R0
       27 CAPTURE                          UPVAL U4
       28 NEWCLOSURE                       R10 P8
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          REF R0
       31 CAPTURE                          UPVAL U4
       32 NEWCLOSURE                       R11 P9
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          REF R0
       35 CAPTURE                          UPVAL U4
       36 DUPCLOSURE                       R12 K0 [PROTO_12]
       37 CAPTURE                          UPVAL U4
       38 DUPCLOSURE                       R13 K1 [PROTO_13]
       39 DUPCLOSURE                       R14 K2 [PROTO_15]
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U6
       42 DUPCLOSURE                       R15 K3 [PROTO_16]
       43 DUPTABLE                         R16 K19 [{"render", "cleanup", "getContainer", "getGuiRoot", "getRenderedNode", "getTextObjectWithMessage", "queryByTestId", "clickNextButton", "clickPrevButton", "clickTableOfContentsButton", "clickSectionButton", "setKeyDown", "scrollToElement", "getAncestorWithTag", "throwMarkdownParserError"}]
       44 SETTABLEKS                       R2 R16 K4 ["render"]
       46 GETUPVAL                         R18 0
       47 GETTABLEKS                       R17 R18 K5 ["cleanup"]
       49 SETTABLEKS                       R17 R16 K5 ["cleanup"]
       51 SETTABLEKS                       R3 R16 K6 ["getContainer"]
       53 SETTABLEKS                       R4 R16 K7 ["getGuiRoot"]
       55 SETTABLEKS                       R5 R16 K8 ["getRenderedNode"]
       57 SETTABLEKS                       R6 R16 K9 ["getTextObjectWithMessage"]
       59 SETTABLEKS                       R7 R16 K10 ["queryByTestId"]
       61 SETTABLEKS                       R8 R16 K11 ["clickNextButton"]
       63 SETTABLEKS                       R9 R16 K12 ["clickPrevButton"]
       65 SETTABLEKS                       R10 R16 K13 ["clickTableOfContentsButton"]
       67 SETTABLEKS                       R11 R16 K14 ["clickSectionButton"]
       69 SETTABLEKS                       R12 R16 K15 ["setKeyDown"]
       71 SETTABLEKS                       R13 R16 K16 ["scrollToElement"]
       73 SETTABLEKS                       R15 R16 K17 ["getAncestorWithTag"]
       75 SETTABLEKS                       R14 R16 K18 ["throwMarkdownParserError"]
       77 CLOSEUPVALS                      R0
       78 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R1 K8 ["Dev"]
       18 GETTABLEKS                       R4 R5 K9 ["JestGlobals"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["React"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R1 K8 ["Dev"]
       30 GETTABLEKS                       R6 R7 K11 ["ReactTestingLibrary"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R10 R0 K12 ["Src"]
       37 GETTABLEKS                       R9 R10 K13 ["Util"]
       39 GETTABLEKS                       R8 R9 K14 ["tests"]
       41 GETTABLEKS                       R7 R8 K15 ["mockContext"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R5 K16 ["fireEvent"]
       46 GETTABLEKS                       R8 R5 K17 ["within"]
       48 GETTABLEKS                       R9 R3 K18 ["jest"]
       50 DUPCLOSURE                       R10 K19 [PROTO_17]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R2
       58 RETURN                           R10 1
