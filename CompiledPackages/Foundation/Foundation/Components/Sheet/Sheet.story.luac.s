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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Fragment"]
  LOADNIL R5
  DUPTABLE R6 K5 [{"Button", "Sheet"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K8 [{"onActivated", "text"}]
  NEWCLOSURE R10 P0
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K6 ["onActivated"]
  LOADK R10 K9 ["Open Sheet"]
  SETTABLEKS R10 R9 K7 ["text"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K3 ["Button"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["Root"]
  DUPTABLE R9 K15 [{"isOpen", "preferCenterSheet", "size", "onClose"}]
  SETTABLEKS R1 R9 K11 ["isOpen"]
  GETTABLEKS R11 R0 K16 ["controls"]
  GETTABLEKS R10 R11 K12 ["preferCenterSheet"]
  SETTABLEKS R10 R9 K12 ["preferCenterSheet"]
  GETTABLEKS R11 R0 K16 ["controls"]
  GETTABLEKS R10 R11 K13 ["size"]
  SETTABLEKS R10 R9 K13 ["size"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K14 ["onClose"]
  DUPTABLE R10 K20 [{"Header", "Content", "Actions"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K17 ["Header"]
  LOADNIL R13
  DUPTABLE R14 K24 [{"GameIcon", "Text", "Notification"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K27 [{"LayoutOrder", "tag"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K28 ["size-1200 radius-small bg-shift-200"]
  SETTABLEKS R18 R17 K26 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K21 ["GameIcon"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K27 [{"LayoutOrder", "tag"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K29 ["col gap-xsmall fill auto-xy"]
  SETTABLEKS R18 R17 K26 ["tag"]
  DUPTABLE R18 K32 [{"Title", "Subtitle"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 5
  DUPTABLE R21 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K25 ["LayoutOrder"]
  LOADK R22 K34 ["Sheet Title"]
  SETTABLEKS R22 R21 K22 ["Text"]
  LOADK R22 K35 ["text-title-large content-emphasis auto-xy text-truncate-split"]
  SETTABLEKS R22 R21 K26 ["tag"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K30 ["Title"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 5
  DUPTABLE R21 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R22 2
  SETTABLEKS R22 R21 K25 ["LayoutOrder"]
  LOADK R22 K36 ["Subtitle or description goes here"]
  SETTABLEKS R22 R21 K22 ["Text"]
  LOADK R22 K37 ["text-body-small content-default auto-xy text-truncate-split"]
  SETTABLEKS R22 R21 K26 ["tag"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K31 ["Subtitle"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K22 ["Text"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K40 [{"LayoutOrder", "Size", "icon", "onActivated"}]
  LOADN R18 3
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K41 ["Large"]
  SETTABLEKS R18 R17 K38 ["Size"]
  GETUPVAL R19 8
  GETTABLEKS R18 R19 K42 ["Bell"]
  SETTABLEKS R18 R17 K39 ["icon"]
  DUPCLOSURE R18 K43 [PROTO_2]
  SETTABLEKS R18 R17 K6 ["onActivated"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K23 ["Notification"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K17 ["Header"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K18 ["Content"]
  LOADNIL R13
  DUPTABLE R14 K56 [{"Carousel", "Attributes", "Rating", "Description", "Description2", "Description3", "Description4", "Description5", "Description6", "Description7", "Description8", "Description9"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K27 [{"LayoutOrder", "tag"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K57 ["size-full-full auto-y radius-medium bg-shift-200 aspect-16-9"]
  SETTABLEKS R18 R17 K26 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K44 ["Carousel"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K58 [{"tag", "LayoutOrder"}]
  LOADK R18 K59 ["row gap-medium auto-y size-full-0 items-center flex-fill"]
  SETTABLEKS R18 R17 K26 ["tag"]
  LOADN R18 3
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  DUPTABLE R18 K63 [{"Rating", "Active", "Age", "Maturity"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K27 [{"LayoutOrder", "tag"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K25 ["LayoutOrder"]
  LOADK R22 K64 ["col gap-small align-x-center auto-xy"]
  SETTABLEKS R22 R21 K26 ["tag"]
  DUPTABLE R22 K67 [{"Label", "Value"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K25 ["LayoutOrder"]
  LOADK R26 K46 ["Rating"]
  SETTABLEKS R26 R25 K22 ["Text"]
  LOADK R26 K68 ["text-body-small content-default auto-xy"]
  SETTABLEKS R26 R25 K26 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K65 ["Label"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K25 ["LayoutOrder"]
  LOADK R26 K69 ["94%"]
  SETTABLEKS R26 R25 K22 ["Text"]
  LOADK R26 K70 ["text-title-medium content-emphasis auto-xy"]
  SETTABLEKS R26 R25 K26 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K66 ["Value"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K46 ["Rating"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K27 [{"LayoutOrder", "tag"}]
  LOADN R22 3
  SETTABLEKS R22 R21 K25 ["LayoutOrder"]
  LOADK R22 K64 ["col gap-small align-x-center auto-xy"]
  SETTABLEKS R22 R21 K26 ["tag"]
  DUPTABLE R22 K67 [{"Label", "Value"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K25 ["LayoutOrder"]
  LOADK R26 K60 ["Active"]
  SETTABLEKS R26 R25 K22 ["Text"]
  LOADK R26 K68 ["text-body-small content-default auto-xy"]
  SETTABLEKS R26 R25 K26 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K65 ["Label"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K25 ["LayoutOrder"]
  LOADK R26 K71 ["1.2K"]
  SETTABLEKS R26 R25 K22 ["Text"]
  LOADK R26 K70 ["text-title-medium content-emphasis auto-xy"]
  SETTABLEKS R26 R25 K26 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K66 ["Value"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K60 ["Active"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K27 [{"LayoutOrder", "tag"}]
  LOADN R22 5
  SETTABLEKS R22 R21 K25 ["LayoutOrder"]
  LOADK R22 K64 ["col gap-small align-x-center auto-xy"]
  SETTABLEKS R22 R21 K26 ["tag"]
  DUPTABLE R22 K67 [{"Label", "Value"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K25 ["LayoutOrder"]
  LOADK R26 K61 ["Age"]
  SETTABLEKS R26 R25 K22 ["Text"]
  LOADK R26 K68 ["text-body-small content-default auto-xy"]
  SETTABLEKS R26 R25 K26 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K65 ["Label"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K25 ["LayoutOrder"]
  LOADK R26 K72 ["13+"]
  SETTABLEKS R26 R25 K22 ["Text"]
  LOADK R26 K70 ["text-title-medium content-emphasis auto-xy"]
  SETTABLEKS R26 R25 K26 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K66 ["Value"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K61 ["Age"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K27 [{"LayoutOrder", "tag"}]
  LOADN R22 7
  SETTABLEKS R22 R21 K25 ["LayoutOrder"]
  LOADK R22 K64 ["col gap-small align-x-center auto-xy"]
  SETTABLEKS R22 R21 K26 ["tag"]
  DUPTABLE R22 K67 [{"Label", "Value"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K25 ["LayoutOrder"]
  LOADK R26 K62 ["Maturity"]
  SETTABLEKS R26 R25 K22 ["Text"]
  LOADK R26 K68 ["text-body-small content-default auto-xy"]
  SETTABLEKS R26 R25 K26 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K65 ["Label"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K25 ["LayoutOrder"]
  LOADK R26 K73 ["Everyone"]
  SETTABLEKS R26 R25 K22 ["Text"]
  LOADK R26 K70 ["text-title-medium content-emphasis auto-xy"]
  SETTABLEKS R26 R25 K26 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K66 ["Value"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K62 ["Maturity"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K45 ["Attributes"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K27 [{"LayoutOrder", "tag"}]
  LOADN R18 4
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K74 ["row radius-medium size-full-0 auto-y gap-small align-y-center bg-shift-200 padding-small"]
  SETTABLEKS R18 R17 K26 ["tag"]
  DUPTABLE R18 K78 [{"Icon", "Rating", "Up", "Down"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 9
  DUPTABLE R21 K80 [{"LayoutOrder", "name", "size"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K25 ["LayoutOrder"]
  GETUPVAL R23 8
  GETTABLEKS R22 R23 K81 ["ThumbUp"]
  SETTABLEKS R22 R21 K79 ["name"]
  GETUPVAL R23 10
  GETTABLEKS R22 R23 K41 ["Large"]
  SETTABLEKS R22 R21 K13 ["size"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K75 ["Icon"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K27 [{"LayoutOrder", "tag"}]
  LOADN R22 2
  SETTABLEKS R22 R21 K25 ["LayoutOrder"]
  LOADK R22 K82 ["col grow auto-xy"]
  SETTABLEKS R22 R21 K26 ["tag"]
  DUPTABLE R22 K83 [{"Value", "Label"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K25 ["LayoutOrder"]
  LOADK R26 K69 ["94%"]
  SETTABLEKS R26 R25 K22 ["Text"]
  LOADK R26 K84 ["text-body-medium content-emphasis auto-xy"]
  SETTABLEKS R26 R25 K26 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K66 ["Value"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K25 ["LayoutOrder"]
  LOADK R26 K85 ["100 VOTES"]
  SETTABLEKS R26 R25 K22 ["Text"]
  LOADK R26 K68 ["text-body-small content-default auto-xy"]
  SETTABLEKS R26 R25 K26 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K65 ["Label"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K46 ["Rating"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 6
  DUPTABLE R21 K86 [{"LayoutOrder", "icon", "size", "onActivated"}]
  LOADN R22 3
  SETTABLEKS R22 R21 K25 ["LayoutOrder"]
  GETUPVAL R23 8
  GETTABLEKS R22 R23 K81 ["ThumbUp"]
  SETTABLEKS R22 R21 K39 ["icon"]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K41 ["Large"]
  SETTABLEKS R22 R21 K13 ["size"]
  DUPCLOSURE R22 K87 [PROTO_3]
  SETTABLEKS R22 R21 K6 ["onActivated"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K76 ["Up"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 6
  DUPTABLE R21 K86 [{"LayoutOrder", "icon", "size", "onActivated"}]
  LOADN R22 4
  SETTABLEKS R22 R21 K25 ["LayoutOrder"]
  GETUPVAL R23 8
  GETTABLEKS R22 R23 K88 ["ThumbDown"]
  SETTABLEKS R22 R21 K39 ["icon"]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K41 ["Large"]
  SETTABLEKS R22 R21 K13 ["size"]
  DUPCLOSURE R22 K89 [PROTO_4]
  SETTABLEKS R22 R21 K6 ["onActivated"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K77 ["Down"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K46 ["Rating"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 5
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K90 ["This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen."]
  SETTABLEKS R18 R17 K22 ["Text"]
  LOADK R18 K91 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K26 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K47 ["Description"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 6
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K92 ["Sheets can be dismissed by swiping down or tapping outside of the sheet area."]
  SETTABLEKS R18 R17 K22 ["Text"]
  LOADK R18 K91 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K26 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K48 ["Description2"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 7
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K93 ["This sheet is fully responsive and will adapt to different screen sizes and orientations."]
  SETTABLEKS R18 R17 K22 ["Text"]
  LOADK R18 K91 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K26 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K49 ["Description3"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 8
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K94 ["You can add as much content as you need inside the sheet, and it will scroll if the content exceeds the available space."]
  SETTABLEKS R18 R17 K22 ["Text"]
  LOADK R18 K91 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K26 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K50 ["Description4"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 9
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K95 ["Sheets are a great way to provide additional context and actions without overwhelming the user with too much information at once."]
  SETTABLEKS R18 R17 K22 ["Text"]
  LOADK R18 K91 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K26 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K51 ["Description5"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 10
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K96 ["This is the last piece of example content inside the sheet. You can customize the appearance and behavior of the sheet to fit your specific use case."]
  SETTABLEKS R18 R17 K22 ["Text"]
  LOADK R18 K91 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K26 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K52 ["Description6"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 11
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K97 ["Thank you for checking out this example of a sheet component in Roblox using the Foundation library!"]
  SETTABLEKS R18 R17 K22 ["Text"]
  LOADK R18 K91 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K26 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K53 ["Description7"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 12
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K98 ["Feel free to reach out if you have any questions or need further assistance."]
  SETTABLEKS R18 R17 K22 ["Text"]
  LOADK R18 K91 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K26 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K54 ["Description8"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K33 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 13
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K99 ["Happy developing!"]
  SETTABLEKS R18 R17 K22 ["Text"]
  LOADK R18 K91 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K26 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K55 ["Description9"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K18 ["Content"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K19 ["Actions"]
  LOADNIL R13
  DUPTABLE R14 K103 [{"More", "Invite", "Join"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K86 [{"LayoutOrder", "icon", "size", "onActivated"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  GETUPVAL R19 8
  GETTABLEKS R18 R19 K104 ["CircleThreeDotsHorizontal"]
  SETTABLEKS R18 R17 K39 ["icon"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K41 ["Large"]
  SETTABLEKS R18 R17 K13 ["size"]
  DUPCLOSURE R18 K105 [PROTO_5]
  SETTABLEKS R18 R17 K6 ["onActivated"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K100 ["More"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K86 [{"LayoutOrder", "icon", "size", "onActivated"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  GETUPVAL R19 8
  GETTABLEKS R18 R19 K106 ["PersonArrowFromBottomRight"]
  SETTABLEKS R18 R17 K39 ["icon"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K41 ["Large"]
  SETTABLEKS R18 R17 K13 ["size"]
  DUPCLOSURE R18 K107 [PROTO_6]
  SETTABLEKS R18 R17 K6 ["onActivated"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K101 ["Invite"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 1
  DUPTABLE R17 K110 [{"LayoutOrder", "text", "icon", "size", "variant", "fillBehavior", "onActivated"}]
  LOADN R18 3
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  LOADK R18 K102 ["Join"]
  SETTABLEKS R18 R17 K7 ["text"]
  GETUPVAL R19 8
  GETTABLEKS R18 R19 K111 ["PlayLarge"]
  SETTABLEKS R18 R17 K39 ["icon"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K41 ["Large"]
  SETTABLEKS R18 R17 K13 ["size"]
  GETUPVAL R19 11
  GETTABLEKS R18 R19 K112 ["Emphasis"]
  SETTABLEKS R18 R17 K108 ["variant"]
  GETUPVAL R19 12
  GETTABLEKS R18 R19 K113 ["Fill"]
  SETTABLEKS R18 R17 K109 ["fillBehavior"]
  NEWCLOSURE R18 P7
  CAPTURE VAL R2
  SETTABLEKS R18 R17 K6 ["onActivated"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K102 ["Join"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K19 ["Actions"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K4 ["Sheet"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  NEWTABLE R3 0 2
  LOADK R4 K1 [0.2]
  GETUPVAL R5 1
  LOADN R6 44
  CALL R5 1 -1
  SETLIST R3 R4 -1 [1]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["Fragment"]
  LOADNIL R6
  DUPTABLE R7 K6 [{"Button", "Sheet"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K9 [{"onActivated", "text"}]
  NEWCLOSURE R11 P0
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K7 ["onActivated"]
  LOADK R11 K10 ["Open Sheet (Manual)"]
  SETTABLEKS R11 R10 K8 ["text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K4 ["Button"]
  JUMPIFNOT R1 [+107]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K11 ["Root"]
  DUPTABLE R10 K17 [{"snapPoints", "defaultSnapPointIndex", "preferCenterSheet", "size", "onClose"}]
  SETTABLEKS R3 R10 K12 ["snapPoints"]
  LOADN R11 2
  SETTABLEKS R11 R10 K13 ["defaultSnapPointIndex"]
  GETTABLEKS R12 R0 K18 ["controls"]
  GETTABLEKS R11 R12 K14 ["preferCenterSheet"]
  SETTABLEKS R11 R10 K14 ["preferCenterSheet"]
  GETTABLEKS R12 R0 K18 ["controls"]
  GETTABLEKS R11 R12 K15 ["size"]
  SETTABLEKS R11 R10 K15 ["size"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K16 ["onClose"]
  DUPTABLE R11 K20 [{"Content"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K2 ["createElement"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K19 ["Content"]
  LOADNIL R14
  DUPTABLE R15 K25 [{"Image", "Description", "Description2", "Description3"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K2 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K28 [{"LayoutOrder", "tag"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  LOADK R19 K29 ["size-full-full auto-y radius-medium bg-shift-200 aspect-16-9"]
  SETTABLEKS R19 R18 K27 ["tag"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K21 ["Image"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K2 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K31 [{"LayoutOrder", "Text", "tag"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  LOADK R19 K32 ["This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen."]
  SETTABLEKS R19 R18 K30 ["Text"]
  LOADK R19 K33 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R19 R18 K27 ["tag"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K22 ["Description"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K2 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K31 [{"LayoutOrder", "Text", "tag"}]
  LOADN R19 3
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  LOADK R19 K34 ["Sheets can be dismissed by swiping down or tapping outside of the sheet area."]
  SETTABLEKS R19 R18 K30 ["Text"]
  LOADK R19 K33 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R19 R18 K27 ["tag"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K23 ["Description2"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K2 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K31 [{"LayoutOrder", "Text", "tag"}]
  LOADN R19 4
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  LOADK R19 K35 ["This sheet is fully responsive and will adapt to different screen sizes and orientations."]
  SETTABLEKS R19 R18 K30 ["Text"]
  LOADK R19 K33 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R19 R18 K27 ["tag"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K24 ["Description3"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K19 ["Content"]
  CALL R8 3 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K5 ["Sheet"]
  CALL R4 3 -1
  RETURN R4 -1

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
  GETIMPORT R15 K6 [require]
  GETTABLEKS R17 R0 K22 ["Utility"]
  GETTABLEKS R16 R17 K23 ["useScaledValue"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R18 R0 K17 ["Enums"]
  GETTABLEKS R17 R18 K24 ["DialogSize"]
  CALL R16 1 1
  DUPCLOSURE R17 K25 [PROTO_8]
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
  DUPCLOSURE R18 K26 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPTABLE R19 K30 [{"summary", "stories", "controls"}]
  LOADK R20 K9 ["Sheet"]
  SETTABLEKS R20 R19 K27 ["summary"]
  NEWTABLE R20 0 2
  DUPTABLE R21 K33 [{"name", "story"}]
  LOADK R22 K34 ["Sheet (auto)"]
  SETTABLEKS R22 R21 K31 ["name"]
  SETTABLEKS R17 R21 K32 ["story"]
  DUPTABLE R22 K33 [{"name", "story"}]
  LOADK R23 K35 ["Sheet (manual)"]
  SETTABLEKS R23 R22 K31 ["name"]
  SETTABLEKS R18 R22 K32 ["story"]
  SETLIST R20 R21 2 [1]
  SETTABLEKS R20 R19 K28 ["stories"]
  DUPTABLE R20 K38 [{"preferCenterSheet", "size"}]
  LOADB R21 0
  SETTABLEKS R21 R20 K36 ["preferCenterSheet"]
  NEWTABLE R21 0 2
  GETTABLEKS R22 R16 K39 ["Medium"]
  GETTABLEKS R23 R16 K40 ["Large"]
  SETLIST R21 R22 2 [1]
  SETTABLEKS R21 R20 K37 ["size"]
  SETTABLEKS R20 R19 K29 ["controls"]
  RETURN R19 1
