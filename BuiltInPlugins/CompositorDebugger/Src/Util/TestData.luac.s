PROTO_0:
  GETUPVAL R0 0
  ADDK R0 R0 K0 [1]
  SETUPVAL R0 0
  LOADK R1 K1 ["ID"]
  GETUPVAL R3 0
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K3 [tostring]
  CALL R2 1 1
  CONCAT R0 R1 R2
  RETURN R0 1

PROTO_1:
  LOADN R0 0
  NEWCLOSURE R1 P0
  CAPTURE REF R0
  CLOSEUPVALS R0
  RETURN R1 1

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  LOADN R3 0
  NEWCLOSURE R2 P0
  CAPTURE REF R3
  CLOSEUPVALS R3
  DUPTABLE R3 K15 [{"mockPayload1", "mockPayload2", "sortByIndex", "sortByName", "sortByClassName", "sortById", "layerView"}]
  DUPTABLE R4 K19 [{"id", "name", "children"}]
  LOADK R5 K20 ["{F9335871-7386-4AFA-B6B3-CF1A4FDB2BFE}"]
  SETTABLEKS R5 R4 K16 ["id"]
  LOADK R5 K21 ["Mock Compositor 1"]
  SETTABLEKS R5 R4 K17 ["name"]
  NEWTABLE R5 0 1
  DUPTABLE R6 K24 [{"children", "className", "id", "props"}]
  NEWTABLE R7 0 2
  DUPTABLE R8 K26 [{"children", "className", "name", "id", "props", "weight"}]
  NEWTABLE R9 0 3
  DUPTABLE R10 K28 [{"children", "className", "name", "id", "props", "weight", "watches"}]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K18 ["children"]
  LOADK R11 K29 ["RestPose"]
  SETTABLEKS R11 R10 K22 ["className"]
  LOADK R11 K30 ["Debug B"]
  SETTABLEKS R11 R10 K17 ["name"]
  LOADK R11 K31 ["{20BFB42C-2D06-4E75-868D-0DA9AF1CBEB4}"]
  SETTABLEKS R11 R10 K16 ["id"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K23 ["props"]
  LOADK R11 K32 [0.5]
  SETTABLEKS R11 R10 K25 ["weight"]
  NEWTABLE R11 2 0
  LOADK R12 K33 ["FOO"]
  SETTABLEKS R12 R11 K34 ["foo"]
  LOADK R12 K35 ["BAR"]
  SETTABLEKS R12 R11 K36 ["bar"]
  SETTABLEKS R11 R10 K27 ["watches"]
  DUPTABLE R11 K38 [{"children", "className", "name", "id", "props", "state", "weight"}]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K18 ["children"]
  LOADK R12 K39 ["ClipLayer"]
  SETTABLEKS R12 R11 K22 ["className"]
  LOADK R12 K40 ["Debug C"]
  SETTABLEKS R12 R11 K17 ["name"]
  LOADK R12 K41 ["{E577542C-2F20-4F2E-836B-0E5BC148CBE6}"]
  SETTABLEKS R12 R11 K16 ["id"]
  DUPTABLE R12 K45 [{"animationId", "isLooping", "speed"}]
  LOADK R13 K46 ["rbxassetid://10921541949"]
  SETTABLEKS R13 R12 K42 ["animationId"]
  LOADB R13 1
  SETTABLEKS R13 R12 K43 ["isLooping"]
  LOADN R13 1
  SETTABLEKS R13 R12 K44 ["speed"]
  SETTABLEKS R12 R11 K23 ["props"]
  DUPTABLE R12 K49 [{"timePosition", "length"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K47 ["timePosition"]
  LOADN R13 5
  SETTABLEKS R13 R12 K48 ["length"]
  SETTABLEKS R12 R11 K37 ["state"]
  LOADK R12 K50 [0.3]
  SETTABLEKS R12 R11 K25 ["weight"]
  DUPTABLE R12 K51 [{"children", "className", "name", "id", "props", "state"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K18 ["children"]
  LOADK R13 K39 ["ClipLayer"]
  SETTABLEKS R13 R12 K22 ["className"]
  LOADK R13 K52 ["Debug D"]
  SETTABLEKS R13 R12 K17 ["name"]
  LOADK R13 K53 ["{2321A81C-9EB4-4017-A496-87F0570B99F9}"]
  SETTABLEKS R13 R12 K16 ["id"]
  DUPTABLE R13 K45 [{"animationId", "isLooping", "speed"}]
  LOADK R14 K54 ["rbxassetid://10899968825"]
  SETTABLEKS R14 R13 K42 ["animationId"]
  LOADB R14 1
  SETTABLEKS R14 R13 K43 ["isLooping"]
  LOADN R14 1
  SETTABLEKS R14 R13 K44 ["speed"]
  SETTABLEKS R13 R12 K23 ["props"]
  DUPTABLE R13 K49 [{"timePosition", "length"}]
  LOADN R14 2
  SETTABLEKS R14 R13 K47 ["timePosition"]
  LOADN R14 4
  SETTABLEKS R14 R13 K48 ["length"]
  SETTABLEKS R13 R12 K37 ["state"]
  SETLIST R9 R10 3 [1]
  SETTABLEKS R9 R8 K18 ["children"]
  LOADK R9 K55 ["Blend1D"]
  SETTABLEKS R9 R8 K22 ["className"]
  LOADK R9 K56 ["Debug A"]
  SETTABLEKS R9 R8 K17 ["name"]
  LOADK R9 K57 ["{275F34E0-57F4-4354-BC5A-38518EF2EB37}"]
  SETTABLEKS R9 R8 K16 ["id"]
  DUPTABLE R9 K59 [{"currentPos", "speed"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K58 ["currentPos"]
  LOADN R10 1
  SETTABLEKS R10 R9 K44 ["speed"]
  SETTABLEKS R9 R8 K23 ["props"]
  LOADN R9 1
  SETTABLEKS R9 R8 K25 ["weight"]
  DUPTABLE R9 K26 [{"children", "className", "name", "id", "props", "weight"}]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K18 ["children"]
  LOADK R10 K39 ["ClipLayer"]
  SETTABLEKS R10 R9 K22 ["className"]
  LOADK R10 K60 ["Debug E"]
  SETTABLEKS R10 R9 K17 ["name"]
  LOADK R10 K61 ["{B1A616DC-DBA5-4E75-ACFC-D073FBBF921F}"]
  SETTABLEKS R10 R9 K16 ["id"]
  DUPTABLE R10 K45 [{"animationId", "isLooping", "speed"}]
  LOADK R11 K62 ["rbxassetid://10921258489"]
  SETTABLEKS R11 R10 K42 ["animationId"]
  LOADB R11 1
  SETTABLEKS R11 R10 K43 ["isLooping"]
  LOADN R11 1
  SETTABLEKS R11 R10 K44 ["speed"]
  SETTABLEKS R10 R9 K23 ["props"]
  LOADN R10 0
  SETTABLEKS R10 R9 K25 ["weight"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K18 ["children"]
  LOADK R7 K63 ["SelectLayer"]
  SETTABLEKS R7 R6 K22 ["className"]
  LOADK R7 K64 ["{6F4A739B-8775-4B8E-9A89-1DBD43E9A4EF}"]
  SETTABLEKS R7 R6 K16 ["id"]
  DUPTABLE R7 K68 [{"fadeInTimeSeconds", "fadeOutTimeSeconds", "selection"}]
  LOADK R8 K69 [0.2]
  SETTABLEKS R8 R7 K65 ["fadeInTimeSeconds"]
  LOADK R8 K69 [0.2]
  SETTABLEKS R8 R7 K66 ["fadeOutTimeSeconds"]
  LOADK R8 K70 ["Idle"]
  SETTABLEKS R8 R7 K67 ["selection"]
  SETTABLEKS R7 R6 K23 ["props"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K18 ["children"]
  SETTABLEKS R4 R3 K8 ["mockPayload1"]
  DUPTABLE R4 K19 [{"id", "name", "children"}]
  LOADK R5 K71 ["{CF1A4FDB-7386-4AFA-B6B3-2BFEF9335871}"]
  SETTABLEKS R5 R4 K16 ["id"]
  LOADK R5 K72 ["Mock Compositor 2"]
  SETTABLEKS R5 R4 K17 ["name"]
  NEWTABLE R5 0 1
  DUPTABLE R6 K73 [{"children", "className", "name", "id", "props"}]
  NEWTABLE R7 0 1
  DUPTABLE R8 K75 [{"children", "className", "id", "name", "props", "state", "data"}]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K18 ["children"]
  LOADK R9 K39 ["ClipLayer"]
  SETTABLEKS R9 R8 K22 ["className"]
  LOADK R9 K76 ["{4017A81C-9EB4-4017-A496-87F0570B99F9}"]
  SETTABLEKS R9 R8 K16 ["id"]
  LOADK R9 K77 ["My Layer"]
  SETTABLEKS R9 R8 K17 ["name"]
  DUPTABLE R9 K45 [{"animationId", "isLooping", "speed"}]
  LOADK R10 K54 ["rbxassetid://10899968825"]
  SETTABLEKS R10 R9 K42 ["animationId"]
  LOADB R10 1
  SETTABLEKS R10 R9 K43 ["isLooping"]
  LOADN R10 1
  SETTABLEKS R10 R9 K44 ["speed"]
  SETTABLEKS R9 R8 K23 ["props"]
  DUPTABLE R9 K78 [{"length", "timePosition"}]
  LOADN R10 4
  SETTABLEKS R10 R9 K48 ["length"]
  LOADN R10 2
  SETTABLEKS R10 R9 K47 ["timePosition"]
  SETTABLEKS R9 R8 K37 ["state"]
  NEWTABLE R9 2 0
  DUPCLOSURE R10 K79 [PROTO_2]
  SETTABLEKS R10 R9 K80 ["function"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K81 ["table"]
  SETTABLEKS R9 R8 K74 ["data"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K18 ["children"]
  LOADK R7 K39 ["ClipLayer"]
  SETTABLEKS R7 R6 K22 ["className"]
  LOADK R7 K82 ["Debug F"]
  SETTABLEKS R7 R6 K17 ["name"]
  LOADK R7 K83 ["{43E9A4EF-8775-4B8E-9A89-1DBD6F4A739B}"]
  SETTABLEKS R7 R6 K16 ["id"]
  DUPTABLE R7 K45 [{"animationId", "isLooping", "speed"}]
  LOADK R8 K62 ["rbxassetid://10921258489"]
  SETTABLEKS R8 R7 K42 ["animationId"]
  LOADB R8 1
  SETTABLEKS R8 R7 K43 ["isLooping"]
  LOADN R8 1
  SETTABLEKS R8 R7 K44 ["speed"]
  SETTABLEKS R7 R6 K23 ["props"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K18 ["children"]
  SETTABLEKS R4 R3 K9 ["mockPayload2"]
  DUPTABLE R4 K19 [{"id", "name", "children"}]
  MOVE R5 R2
  CALL R5 0 1
  SETTABLEKS R5 R4 K16 ["id"]
  LOADK R5 K84 ["Sort by Index"]
  SETTABLEKS R5 R4 K17 ["name"]
  NEWTABLE R5 0 3
  DUPTABLE R6 K86 [{"id", "name", "index", "className", "children"}]
  MOVE R7 R2
  CALL R7 0 1
  SETTABLEKS R7 R6 K16 ["id"]
  LOADK R7 K87 ["Third"]
  SETTABLEKS R7 R6 K17 ["name"]
  LOADN R7 3
  SETTABLEKS R7 R6 K85 ["index"]
  LOADK R7 K39 ["ClipLayer"]
  SETTABLEKS R7 R6 K22 ["className"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K18 ["children"]
  DUPTABLE R7 K86 [{"id", "name", "index", "className", "children"}]
  MOVE R8 R2
  CALL R8 0 1
  SETTABLEKS R8 R7 K16 ["id"]
  LOADK R8 K88 ["First"]
  SETTABLEKS R8 R7 K17 ["name"]
  LOADN R8 1
  SETTABLEKS R8 R7 K85 ["index"]
  LOADK R8 K39 ["ClipLayer"]
  SETTABLEKS R8 R7 K22 ["className"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K18 ["children"]
  DUPTABLE R8 K86 [{"id", "name", "index", "className", "children"}]
  MOVE R9 R2
  CALL R9 0 1
  SETTABLEKS R9 R8 K16 ["id"]
  LOADK R9 K89 ["Second"]
  SETTABLEKS R9 R8 K17 ["name"]
  LOADN R9 2
  SETTABLEKS R9 R8 K85 ["index"]
  LOADK R9 K39 ["ClipLayer"]
  SETTABLEKS R9 R8 K22 ["className"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K18 ["children"]
  SETLIST R5 R6 3 [1]
  SETTABLEKS R5 R4 K18 ["children"]
  SETTABLEKS R4 R3 K10 ["sortByIndex"]
  DUPTABLE R4 K19 [{"id", "name", "children"}]
  MOVE R5 R2
  CALL R5 0 1
  SETTABLEKS R5 R4 K16 ["id"]
  LOADK R5 K90 ["Sort by Name"]
  SETTABLEKS R5 R4 K17 ["name"]
  NEWTABLE R5 0 3
  DUPTABLE R6 K91 [{"id", "name", "className", "children"}]
  MOVE R7 R2
  CALL R7 0 1
  SETTABLEKS R7 R6 K16 ["id"]
  LOADK R7 K92 ["[C] Third"]
  SETTABLEKS R7 R6 K17 ["name"]
  LOADK R7 K39 ["ClipLayer"]
  SETTABLEKS R7 R6 K22 ["className"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K18 ["children"]
  DUPTABLE R7 K91 [{"id", "name", "className", "children"}]
  MOVE R8 R2
  CALL R8 0 1
  SETTABLEKS R8 R7 K16 ["id"]
  LOADK R8 K93 ["[B] Second"]
  SETTABLEKS R8 R7 K17 ["name"]
  LOADK R8 K39 ["ClipLayer"]
  SETTABLEKS R8 R7 K22 ["className"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K18 ["children"]
  DUPTABLE R8 K91 [{"id", "name", "className", "children"}]
  MOVE R9 R2
  CALL R9 0 1
  SETTABLEKS R9 R8 K16 ["id"]
  LOADK R9 K94 ["[A] First"]
  SETTABLEKS R9 R8 K17 ["name"]
  LOADK R9 K39 ["ClipLayer"]
  SETTABLEKS R9 R8 K22 ["className"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K18 ["children"]
  SETLIST R5 R6 3 [1]
  SETTABLEKS R5 R4 K18 ["children"]
  SETTABLEKS R4 R3 K11 ["sortByName"]
  DUPTABLE R4 K19 [{"id", "name", "children"}]
  MOVE R5 R2
  CALL R5 0 1
  SETTABLEKS R5 R4 K16 ["id"]
  LOADK R5 K95 ["Sort by Classname"]
  SETTABLEKS R5 R4 K17 ["name"]
  NEWTABLE R5 0 3
  DUPTABLE R6 K96 [{"id", "className", "children"}]
  MOVE R7 R2
  CALL R7 0 1
  SETTABLEKS R7 R6 K16 ["id"]
  LOADK R7 K97 ["SequenceLayer"]
  SETTABLEKS R7 R6 K22 ["className"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K18 ["children"]
  DUPTABLE R7 K96 [{"id", "className", "children"}]
  MOVE R8 R2
  CALL R8 0 1
  SETTABLEKS R8 R7 K16 ["id"]
  LOADK R8 K55 ["Blend1D"]
  SETTABLEKS R8 R7 K22 ["className"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K18 ["children"]
  DUPTABLE R8 K96 [{"id", "className", "children"}]
  MOVE R9 R2
  CALL R9 0 1
  SETTABLEKS R9 R8 K16 ["id"]
  LOADK R9 K39 ["ClipLayer"]
  SETTABLEKS R9 R8 K22 ["className"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K18 ["children"]
  SETLIST R5 R6 3 [1]
  SETTABLEKS R5 R4 K18 ["children"]
  SETTABLEKS R4 R3 K12 ["sortByClassName"]
  DUPTABLE R4 K19 [{"id", "name", "children"}]
  MOVE R5 R2
  CALL R5 0 1
  SETTABLEKS R5 R4 K16 ["id"]
  LOADK R5 K98 ["Sort by Id"]
  SETTABLEKS R5 R4 K17 ["name"]
  NEWTABLE R5 0 3
  DUPTABLE R6 K96 [{"id", "className", "children"}]
  MOVE R7 R2
  CALL R7 0 1
  SETTABLEKS R7 R6 K16 ["id"]
  LOADK R7 K39 ["ClipLayer"]
  SETTABLEKS R7 R6 K22 ["className"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K18 ["children"]
  DUPTABLE R7 K96 [{"id", "className", "children"}]
  MOVE R8 R2
  CALL R8 0 1
  SETTABLEKS R8 R7 K16 ["id"]
  LOADK R8 K39 ["ClipLayer"]
  SETTABLEKS R8 R7 K22 ["className"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K18 ["children"]
  DUPTABLE R8 K96 [{"id", "className", "children"}]
  MOVE R9 R2
  CALL R9 0 1
  SETTABLEKS R9 R8 K16 ["id"]
  LOADK R9 K39 ["ClipLayer"]
  SETTABLEKS R9 R8 K22 ["className"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K18 ["children"]
  SETLIST R5 R6 3 [1]
  SETTABLEKS R5 R4 K18 ["children"]
  SETTABLEKS R4 R3 K13 ["sortById"]
  DUPTABLE R4 K101 [{"ExpandedSections", "LayerData"}]
  NEWTABLE R5 4 0
  LOADB R6 1
  SETTABLEKS R6 R5 K102 ["LayerDetails"]
  LOADB R6 1
  SETTABLEKS R6 R5 K103 ["Properties"]
  LOADB R6 0
  SETTABLEKS R6 R5 K104 ["State"]
  LOADB R6 1
  SETTABLEKS R6 R5 K105 ["Watches"]
  SETTABLEKS R5 R4 K99 ["ExpandedSections"]
  DUPTABLE R5 K106 [{"children", "className", "id", "name", "props", "watches"}]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K18 ["children"]
  LOADK R6 K39 ["ClipLayer"]
  SETTABLEKS R6 R5 K22 ["className"]
  LOADK R6 K53 ["{2321A81C-9EB4-4017-A496-87F0570B99F9}"]
  SETTABLEKS R6 R5 K16 ["id"]
  LOADK R6 K77 ["My Layer"]
  SETTABLEKS R6 R5 K17 ["name"]
  DUPTABLE R6 K45 [{"animationId", "isLooping", "speed"}]
  LOADK R7 K54 ["rbxassetid://10899968825"]
  SETTABLEKS R7 R6 K42 ["animationId"]
  LOADB R7 1
  SETTABLEKS R7 R6 K43 ["isLooping"]
  LOADN R7 1
  SETTABLEKS R7 R6 K44 ["speed"]
  SETTABLEKS R6 R5 K23 ["props"]
  NEWTABLE R6 2 0
  DUPCLOSURE R7 K107 [PROTO_3]
  SETTABLEKS R7 R6 K80 ["function"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K81 ["table"]
  SETTABLEKS R6 R5 K27 ["watches"]
  SETTABLEKS R5 R4 K100 ["LayerData"]
  SETTABLEKS R4 R3 K14 ["layerView"]
  RETURN R3 1
