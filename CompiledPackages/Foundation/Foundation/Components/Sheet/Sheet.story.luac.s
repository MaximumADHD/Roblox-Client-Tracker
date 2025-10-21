PROTO_0:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  RETURN R0 0

PROTO_6:
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useState"]
  LOADB R1 0
  CALL R0 1 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Fragment"]
  LOADNIL R4
  DUPTABLE R5 K5 [{"Button", "Sheet"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K8 [{"onActivated", "text"}]
  NEWCLOSURE R9 P0
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K6 ["onActivated"]
  LOADK R9 K9 ["Open Sheet"]
  SETTABLEKS R9 R8 K7 ["text"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K3 ["Button"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["Root"]
  DUPTABLE R8 K13 [{"isOpen", "onClose"}]
  SETTABLEKS R0 R8 K11 ["isOpen"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K12 ["onClose"]
  DUPTABLE R9 K17 [{"Header", "Content", "Actions"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K14 ["Header"]
  LOADNIL R12
  DUPTABLE R13 K21 [{"GameIcon", "Text", "Notification"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K24 [{"LayoutOrder", "tag"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K25 ["size-1200 radius-small bg-shift-200"]
  SETTABLEKS R17 R16 K23 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K18 ["GameIcon"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K24 [{"LayoutOrder", "tag"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K26 ["col gap-xsmall fill auto-xy"]
  SETTABLEKS R17 R16 K23 ["tag"]
  DUPTABLE R17 K29 [{"Title", "Subtitle"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 5
  DUPTABLE R20 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K22 ["LayoutOrder"]
  LOADK R21 K31 ["Sheet Title"]
  SETTABLEKS R21 R20 K19 ["Text"]
  LOADK R21 K32 ["text-title-large content-emphasis auto-xy text-truncate-split"]
  SETTABLEKS R21 R20 K23 ["tag"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K27 ["Title"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 5
  DUPTABLE R20 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R21 2
  SETTABLEKS R21 R20 K22 ["LayoutOrder"]
  LOADK R21 K33 ["Subtitle or description goes here"]
  SETTABLEKS R21 R20 K19 ["Text"]
  LOADK R21 K34 ["text-body-small content-default auto-xy text-truncate-split"]
  SETTABLEKS R21 R20 K23 ["tag"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K28 ["Subtitle"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K19 ["Text"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K37 [{"LayoutOrder", "Size", "icon", "onActivated"}]
  LOADN R17 3
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  GETUPVAL R18 7
  GETTABLEKS R17 R18 K38 ["Large"]
  SETTABLEKS R17 R16 K35 ["Size"]
  GETUPVAL R18 8
  GETTABLEKS R17 R18 K39 ["Bell"]
  SETTABLEKS R17 R16 K36 ["icon"]
  DUPCLOSURE R17 K40 [PROTO_2]
  SETTABLEKS R17 R16 K6 ["onActivated"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K20 ["Notification"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K14 ["Header"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K15 ["Content"]
  LOADNIL R12
  DUPTABLE R13 K53 [{"Carousel", "Attributes", "Rating", "Description", "Description2", "Description3", "Description4", "Description5", "Description6", "Description7", "Description8", "Description9"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K24 [{"LayoutOrder", "tag"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K54 ["size-full-full auto-y radius-medium bg-shift-200 aspect-16-9"]
  SETTABLEKS R17 R16 K23 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K41 ["Carousel"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K55 [{"tag", "LayoutOrder"}]
  LOADK R17 K56 ["row gap-medium auto-y size-full-0 items-center flex-fill"]
  SETTABLEKS R17 R16 K23 ["tag"]
  LOADN R17 3
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  DUPTABLE R17 K60 [{"Rating", "Active", "Age", "Maturity"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K24 [{"LayoutOrder", "tag"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K22 ["LayoutOrder"]
  LOADK R21 K61 ["col gap-small align-x-center auto-xy"]
  SETTABLEKS R21 R20 K23 ["tag"]
  DUPTABLE R21 K64 [{"Label", "Value"}]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K1 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K22 ["LayoutOrder"]
  LOADK R25 K43 ["Rating"]
  SETTABLEKS R25 R24 K19 ["Text"]
  LOADK R25 K65 ["text-body-small content-default auto-xy"]
  SETTABLEKS R25 R24 K23 ["tag"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K62 ["Label"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K1 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R25 2
  SETTABLEKS R25 R24 K22 ["LayoutOrder"]
  LOADK R25 K66 ["94%"]
  SETTABLEKS R25 R24 K19 ["Text"]
  LOADK R25 K67 ["text-title-medium content-emphasis auto-xy"]
  SETTABLEKS R25 R24 K23 ["tag"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K63 ["Value"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K43 ["Rating"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K24 [{"LayoutOrder", "tag"}]
  LOADN R21 3
  SETTABLEKS R21 R20 K22 ["LayoutOrder"]
  LOADK R21 K61 ["col gap-small align-x-center auto-xy"]
  SETTABLEKS R21 R20 K23 ["tag"]
  DUPTABLE R21 K64 [{"Label", "Value"}]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K1 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K22 ["LayoutOrder"]
  LOADK R25 K57 ["Active"]
  SETTABLEKS R25 R24 K19 ["Text"]
  LOADK R25 K65 ["text-body-small content-default auto-xy"]
  SETTABLEKS R25 R24 K23 ["tag"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K62 ["Label"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K1 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R25 2
  SETTABLEKS R25 R24 K22 ["LayoutOrder"]
  LOADK R25 K68 ["1.2K"]
  SETTABLEKS R25 R24 K19 ["Text"]
  LOADK R25 K67 ["text-title-medium content-emphasis auto-xy"]
  SETTABLEKS R25 R24 K23 ["tag"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K63 ["Value"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K57 ["Active"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K24 [{"LayoutOrder", "tag"}]
  LOADN R21 5
  SETTABLEKS R21 R20 K22 ["LayoutOrder"]
  LOADK R21 K61 ["col gap-small align-x-center auto-xy"]
  SETTABLEKS R21 R20 K23 ["tag"]
  DUPTABLE R21 K64 [{"Label", "Value"}]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K1 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K22 ["LayoutOrder"]
  LOADK R25 K58 ["Age"]
  SETTABLEKS R25 R24 K19 ["Text"]
  LOADK R25 K65 ["text-body-small content-default auto-xy"]
  SETTABLEKS R25 R24 K23 ["tag"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K62 ["Label"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K1 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R25 2
  SETTABLEKS R25 R24 K22 ["LayoutOrder"]
  LOADK R25 K69 ["13+"]
  SETTABLEKS R25 R24 K19 ["Text"]
  LOADK R25 K67 ["text-title-medium content-emphasis auto-xy"]
  SETTABLEKS R25 R24 K23 ["tag"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K63 ["Value"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K58 ["Age"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K24 [{"LayoutOrder", "tag"}]
  LOADN R21 7
  SETTABLEKS R21 R20 K22 ["LayoutOrder"]
  LOADK R21 K61 ["col gap-small align-x-center auto-xy"]
  SETTABLEKS R21 R20 K23 ["tag"]
  DUPTABLE R21 K64 [{"Label", "Value"}]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K1 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K22 ["LayoutOrder"]
  LOADK R25 K59 ["Maturity"]
  SETTABLEKS R25 R24 K19 ["Text"]
  LOADK R25 K65 ["text-body-small content-default auto-xy"]
  SETTABLEKS R25 R24 K23 ["tag"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K62 ["Label"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K1 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R25 2
  SETTABLEKS R25 R24 K22 ["LayoutOrder"]
  LOADK R25 K70 ["Everyone"]
  SETTABLEKS R25 R24 K19 ["Text"]
  LOADK R25 K67 ["text-title-medium content-emphasis auto-xy"]
  SETTABLEKS R25 R24 K23 ["tag"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K63 ["Value"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K59 ["Maturity"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K42 ["Attributes"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K24 [{"LayoutOrder", "tag"}]
  LOADN R17 4
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K71 ["row radius-medium size-full-0 auto-y gap-small align-y-center bg-shift-200 padding-small"]
  SETTABLEKS R17 R16 K23 ["tag"]
  DUPTABLE R17 K75 [{"Icon", "Rating", "Up", "Down"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 9
  DUPTABLE R20 K78 [{"LayoutOrder", "name", "size"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K22 ["LayoutOrder"]
  GETUPVAL R22 8
  GETTABLEKS R21 R22 K79 ["ThumbUp"]
  SETTABLEKS R21 R20 K76 ["name"]
  GETUPVAL R22 10
  GETTABLEKS R21 R22 K38 ["Large"]
  SETTABLEKS R21 R20 K77 ["size"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K72 ["Icon"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K24 [{"LayoutOrder", "tag"}]
  LOADN R21 2
  SETTABLEKS R21 R20 K22 ["LayoutOrder"]
  LOADK R21 K80 ["col grow auto-xy"]
  SETTABLEKS R21 R20 K23 ["tag"]
  DUPTABLE R21 K81 [{"Value", "Label"}]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K1 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K22 ["LayoutOrder"]
  LOADK R25 K66 ["94%"]
  SETTABLEKS R25 R24 K19 ["Text"]
  LOADK R25 K82 ["text-body-medium content-emphasis auto-xy"]
  SETTABLEKS R25 R24 K23 ["tag"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K63 ["Value"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K1 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R25 2
  SETTABLEKS R25 R24 K22 ["LayoutOrder"]
  LOADK R25 K83 ["100 VOTES"]
  SETTABLEKS R25 R24 K19 ["Text"]
  LOADK R25 K65 ["text-body-small content-default auto-xy"]
  SETTABLEKS R25 R24 K23 ["tag"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K62 ["Label"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K43 ["Rating"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 6
  DUPTABLE R20 K84 [{"LayoutOrder", "icon", "size", "onActivated"}]
  LOADN R21 3
  SETTABLEKS R21 R20 K22 ["LayoutOrder"]
  GETUPVAL R22 8
  GETTABLEKS R21 R22 K79 ["ThumbUp"]
  SETTABLEKS R21 R20 K36 ["icon"]
  GETUPVAL R22 7
  GETTABLEKS R21 R22 K38 ["Large"]
  SETTABLEKS R21 R20 K77 ["size"]
  DUPCLOSURE R21 K85 [PROTO_3]
  SETTABLEKS R21 R20 K6 ["onActivated"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K73 ["Up"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 6
  DUPTABLE R20 K84 [{"LayoutOrder", "icon", "size", "onActivated"}]
  LOADN R21 4
  SETTABLEKS R21 R20 K22 ["LayoutOrder"]
  GETUPVAL R22 8
  GETTABLEKS R21 R22 K86 ["ThumbDown"]
  SETTABLEKS R21 R20 K36 ["icon"]
  GETUPVAL R22 7
  GETTABLEKS R21 R22 K38 ["Large"]
  SETTABLEKS R21 R20 K77 ["size"]
  DUPCLOSURE R21 K87 [PROTO_4]
  SETTABLEKS R21 R20 K6 ["onActivated"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K74 ["Down"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K43 ["Rating"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R17 5
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K88 ["This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen."]
  SETTABLEKS R17 R16 K19 ["Text"]
  LOADK R17 K89 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R17 R16 K23 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K44 ["Description"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R17 6
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K90 ["Sheets can be dismissed by swiping down or tapping outside of the sheet area."]
  SETTABLEKS R17 R16 K19 ["Text"]
  LOADK R17 K89 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R17 R16 K23 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K45 ["Description2"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R17 7
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K91 ["This sheet is fully responsive and will adapt to different screen sizes and orientations."]
  SETTABLEKS R17 R16 K19 ["Text"]
  LOADK R17 K89 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R17 R16 K23 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K46 ["Description3"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R17 8
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K92 ["You can add as much content as you need inside the sheet, and it will scroll if the content exceeds the available space."]
  SETTABLEKS R17 R16 K19 ["Text"]
  LOADK R17 K89 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R17 R16 K23 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K47 ["Description4"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R17 9
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K93 ["Sheets are a great way to provide additional context and actions without overwhelming the user with too much information at once."]
  SETTABLEKS R17 R16 K19 ["Text"]
  LOADK R17 K89 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R17 R16 K23 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K48 ["Description5"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R17 10
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K94 ["This is the last piece of example content inside the sheet. You can customize the appearance and behavior of the sheet to fit your specific use case."]
  SETTABLEKS R17 R16 K19 ["Text"]
  LOADK R17 K89 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R17 R16 K23 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K49 ["Description6"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R17 11
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K95 ["Thank you for checking out this example of a sheet component in Roblox using the Foundation library!"]
  SETTABLEKS R17 R16 K19 ["Text"]
  LOADK R17 K89 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R17 R16 K23 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K50 ["Description7"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R17 12
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K96 ["Feel free to reach out if you have any questions or need further assistance."]
  SETTABLEKS R17 R16 K19 ["Text"]
  LOADK R17 K89 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R17 R16 K23 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K51 ["Description8"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K30 [{"LayoutOrder", "Text", "tag"}]
  LOADN R17 13
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K97 ["Happy developing!"]
  SETTABLEKS R17 R16 K19 ["Text"]
  LOADK R17 K89 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R17 R16 K23 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K52 ["Description9"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K15 ["Content"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K16 ["Actions"]
  LOADNIL R12
  DUPTABLE R13 K101 [{"More", "Invite", "Join"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K84 [{"LayoutOrder", "icon", "size", "onActivated"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  GETUPVAL R18 8
  GETTABLEKS R17 R18 K102 ["CircleThreeDotsHorizontal"]
  SETTABLEKS R17 R16 K36 ["icon"]
  GETUPVAL R18 7
  GETTABLEKS R17 R18 K38 ["Large"]
  SETTABLEKS R17 R16 K77 ["size"]
  DUPCLOSURE R17 K103 [PROTO_5]
  SETTABLEKS R17 R16 K6 ["onActivated"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K98 ["More"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K84 [{"LayoutOrder", "icon", "size", "onActivated"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  GETUPVAL R18 8
  GETTABLEKS R17 R18 K104 ["PersonArrowFromBottomRight"]
  SETTABLEKS R17 R16 K36 ["icon"]
  GETUPVAL R18 7
  GETTABLEKS R17 R18 K38 ["Large"]
  SETTABLEKS R17 R16 K77 ["size"]
  DUPCLOSURE R17 K105 [PROTO_6]
  SETTABLEKS R17 R16 K6 ["onActivated"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K99 ["Invite"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K108 [{"LayoutOrder", "text", "icon", "size", "variant", "fillBehavior", "onActivated"}]
  LOADN R17 3
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K100 ["Join"]
  SETTABLEKS R17 R16 K7 ["text"]
  GETUPVAL R18 8
  GETTABLEKS R17 R18 K109 ["PlayLarge"]
  SETTABLEKS R17 R16 K36 ["icon"]
  GETUPVAL R18 7
  GETTABLEKS R17 R18 K38 ["Large"]
  SETTABLEKS R17 R16 K77 ["size"]
  GETUPVAL R18 11
  GETTABLEKS R17 R18 K110 ["Emphasis"]
  SETTABLEKS R17 R16 K106 ["variant"]
  GETUPVAL R18 12
  GETTABLEKS R17 R18 K111 ["Fill"]
  SETTABLEKS R17 R16 K107 ["fillBehavior"]
  NEWCLOSURE R17 P7
  CAPTURE VAL R1
  SETTABLEKS R17 R16 K6 ["onActivated"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K100 ["Join"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K16 ["Actions"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K4 ["Sheet"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useState"]
  LOADB R1 0
  CALL R0 1 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Fragment"]
  LOADNIL R4
  DUPTABLE R5 K5 [{"Button", "Sheet"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K8 [{"onActivated", "text"}]
  NEWCLOSURE R9 P0
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K6 ["onActivated"]
  LOADK R9 K9 ["Open Sheet (Manual)"]
  SETTABLEKS R9 R8 K7 ["text"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K3 ["Button"]
  JUMPIFNOT R0 [+101]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["Root"]
  DUPTABLE R8 K14 [{"snapPoints", "defaultSnapPointIndex", "onClose"}]
  NEWTABLE R9 0 2
  LOADK R10 K15 [0.2]
  LOADK R11 K16 [0.4]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K11 ["snapPoints"]
  LOADN R9 2
  SETTABLEKS R9 R8 K12 ["defaultSnapPointIndex"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K13 ["onClose"]
  DUPTABLE R9 K18 [{"Content"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K17 ["Content"]
  LOADNIL R12
  DUPTABLE R13 K23 [{"Image", "Description", "Description2", "Description3"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K26 [{"LayoutOrder", "tag"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K24 ["LayoutOrder"]
  LOADK R17 K27 ["size-full-full auto-y radius-medium bg-shift-200 aspect-16-9"]
  SETTABLEKS R17 R16 K25 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["Image"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K29 [{"LayoutOrder", "Text", "tag"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K24 ["LayoutOrder"]
  LOADK R17 K30 ["This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen."]
  SETTABLEKS R17 R16 K28 ["Text"]
  LOADK R17 K31 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R17 R16 K25 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K20 ["Description"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K29 [{"LayoutOrder", "Text", "tag"}]
  LOADN R17 3
  SETTABLEKS R17 R16 K24 ["LayoutOrder"]
  LOADK R17 K32 ["Sheets can be dismissed by swiping down or tapping outside of the sheet area."]
  SETTABLEKS R17 R16 K28 ["Text"]
  LOADK R17 K31 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R17 R16 K25 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K21 ["Description2"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K29 [{"LayoutOrder", "Text", "tag"}]
  LOADN R17 4
  SETTABLEKS R17 R16 K24 ["LayoutOrder"]
  LOADK R17 K33 ["This sheet is fully responsive and will adapt to different screen sizes and orientations."]
  SETTABLEKS R17 R16 K28 ["Text"]
  LOADK R17 K31 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R17 R16 K25 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["Description3"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K17 ["Content"]
  CALL R6 3 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K4 ["Sheet"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Sheet"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Button"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K11 ["View"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K8 ["Components"]
  GETTABLEKS R7 R8 K12 ["Text"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K8 ["Components"]
  GETTABLEKS R8 R9 K13 ["Image"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K8 ["Components"]
  GETTABLEKS R9 R10 K14 ["IconButton"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K8 ["Components"]
  GETTABLEKS R10 R11 K15 ["Icon"]
  CALL R9 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R12 R1 K16 ["BuilderIcons"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K15 ["Icon"]
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R0 K17 ["Enums"]
  GETTABLEKS R12 R13 K18 ["IconSize"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R0 K17 ["Enums"]
  GETTABLEKS R13 R14 K19 ["InputSize"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R0 K17 ["Enums"]
  GETTABLEKS R14 R15 K20 ["ButtonVariant"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R16 R0 K17 ["Enums"]
  GETTABLEKS R15 R16 K21 ["FillBehavior"]
  CALL R14 1 1
  DUPCLOSURE R15 K22 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R14
  DUPCLOSURE R16 K23 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPTABLE R17 K27 [{"summary", "stories", "controls"}]
  LOADK R18 K9 ["Sheet"]
  SETTABLEKS R18 R17 K24 ["summary"]
  NEWTABLE R18 0 2
  DUPTABLE R19 K30 [{"name", "story"}]
  LOADK R20 K31 ["Sheet (auto)"]
  SETTABLEKS R20 R19 K28 ["name"]
  SETTABLEKS R15 R19 K29 ["story"]
  DUPTABLE R20 K30 [{"name", "story"}]
  LOADK R21 K32 ["Sheet (manual)"]
  SETTABLEKS R21 R20 K28 ["name"]
  SETTABLEKS R16 R20 K29 ["story"]
  SETLIST R18 R19 2 [1]
  SETTABLEKS R18 R17 K25 ["stories"]
  NEWTABLE R18 0 0
  SETTABLEKS R18 R17 K26 ["controls"]
  RETURN R17 1
