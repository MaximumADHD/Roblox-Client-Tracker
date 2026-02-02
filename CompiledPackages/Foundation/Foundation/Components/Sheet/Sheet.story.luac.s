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
  DUPTABLE R9 K16 [{"isOpen", "snapPoints", "preferCenterSheet", "size", "onClose"}]
  SETTABLEKS R1 R9 K11 ["isOpen"]
  NEWTABLE R10 0 2
  LOADK R11 K17 [0.5]
  LOADK R12 K18 [0.9]
  SETLIST R10 R11 2 [1]
  SETTABLEKS R10 R9 K12 ["snapPoints"]
  GETTABLEKS R11 R0 K19 ["controls"]
  GETTABLEKS R10 R11 K13 ["preferCenterSheet"]
  SETTABLEKS R10 R9 K13 ["preferCenterSheet"]
  GETTABLEKS R11 R0 K19 ["controls"]
  GETTABLEKS R10 R11 K14 ["size"]
  SETTABLEKS R10 R9 K14 ["size"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K15 ["onClose"]
  DUPTABLE R10 K23 [{"Header", "Content", "Actions"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K20 ["Header"]
  LOADNIL R13
  DUPTABLE R14 K27 [{"GameIcon", "Text", "Notification"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K30 [{"LayoutOrder", "tag"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K31 ["size-1200 radius-small bg-shift-200"]
  SETTABLEKS R18 R17 K29 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K24 ["GameIcon"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K30 [{"LayoutOrder", "tag"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K32 ["col gap-xsmall fill auto-xy"]
  SETTABLEKS R18 R17 K29 ["tag"]
  DUPTABLE R18 K35 [{"Title", "Subtitle"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 5
  DUPTABLE R21 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K28 ["LayoutOrder"]
  LOADK R22 K37 ["Sheet Title"]
  SETTABLEKS R22 R21 K25 ["Text"]
  LOADK R22 K38 ["text-title-large content-emphasis auto-xy text-truncate-split"]
  SETTABLEKS R22 R21 K29 ["tag"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K33 ["Title"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 5
  DUPTABLE R21 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R22 2
  SETTABLEKS R22 R21 K28 ["LayoutOrder"]
  LOADK R22 K39 ["Subtitle or description goes here"]
  SETTABLEKS R22 R21 K25 ["Text"]
  LOADK R22 K40 ["text-body-small content-default auto-xy text-truncate-split"]
  SETTABLEKS R22 R21 K29 ["tag"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["Subtitle"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K25 ["Text"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K43 [{"LayoutOrder", "Size", "icon", "onActivated"}]
  LOADN R18 3
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K44 ["Large"]
  SETTABLEKS R18 R17 K41 ["Size"]
  GETUPVAL R19 8
  GETTABLEKS R18 R19 K45 ["Bell"]
  SETTABLEKS R18 R17 K42 ["icon"]
  DUPCLOSURE R18 K46 [PROTO_2]
  SETTABLEKS R18 R17 K6 ["onActivated"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K26 ["Notification"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K20 ["Header"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K21 ["Content"]
  LOADNIL R13
  DUPTABLE R14 K59 [{"Carousel", "Attributes", "Rating", "Description", "Description2", "Description3", "Description4", "Description5", "Description6", "Description7", "Description8", "Description9"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K30 [{"LayoutOrder", "tag"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K60 ["size-full-full auto-y radius-medium bg-shift-200 aspect-16-9"]
  SETTABLEKS R18 R17 K29 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K47 ["Carousel"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K61 [{"tag", "LayoutOrder"}]
  LOADK R18 K62 ["row gap-medium auto-y size-full-0 items-center flex-fill"]
  SETTABLEKS R18 R17 K29 ["tag"]
  LOADN R18 3
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  DUPTABLE R18 K66 [{"Rating", "Active", "Age", "Maturity"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K30 [{"LayoutOrder", "tag"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K28 ["LayoutOrder"]
  LOADK R22 K67 ["col gap-small align-x-center auto-xy"]
  SETTABLEKS R22 R21 K29 ["tag"]
  DUPTABLE R22 K70 [{"Label", "Value"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K28 ["LayoutOrder"]
  LOADK R26 K49 ["Rating"]
  SETTABLEKS R26 R25 K25 ["Text"]
  LOADK R26 K71 ["text-body-small content-default auto-xy"]
  SETTABLEKS R26 R25 K29 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K68 ["Label"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K28 ["LayoutOrder"]
  LOADK R26 K72 ["94%"]
  SETTABLEKS R26 R25 K25 ["Text"]
  LOADK R26 K73 ["text-title-medium content-emphasis auto-xy"]
  SETTABLEKS R26 R25 K29 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K69 ["Value"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K49 ["Rating"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K30 [{"LayoutOrder", "tag"}]
  LOADN R22 3
  SETTABLEKS R22 R21 K28 ["LayoutOrder"]
  LOADK R22 K67 ["col gap-small align-x-center auto-xy"]
  SETTABLEKS R22 R21 K29 ["tag"]
  DUPTABLE R22 K70 [{"Label", "Value"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K28 ["LayoutOrder"]
  LOADK R26 K63 ["Active"]
  SETTABLEKS R26 R25 K25 ["Text"]
  LOADK R26 K71 ["text-body-small content-default auto-xy"]
  SETTABLEKS R26 R25 K29 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K68 ["Label"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K28 ["LayoutOrder"]
  LOADK R26 K74 ["1.2K"]
  SETTABLEKS R26 R25 K25 ["Text"]
  LOADK R26 K73 ["text-title-medium content-emphasis auto-xy"]
  SETTABLEKS R26 R25 K29 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K69 ["Value"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K63 ["Active"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K30 [{"LayoutOrder", "tag"}]
  LOADN R22 5
  SETTABLEKS R22 R21 K28 ["LayoutOrder"]
  LOADK R22 K67 ["col gap-small align-x-center auto-xy"]
  SETTABLEKS R22 R21 K29 ["tag"]
  DUPTABLE R22 K70 [{"Label", "Value"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K28 ["LayoutOrder"]
  LOADK R26 K64 ["Age"]
  SETTABLEKS R26 R25 K25 ["Text"]
  LOADK R26 K71 ["text-body-small content-default auto-xy"]
  SETTABLEKS R26 R25 K29 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K68 ["Label"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K28 ["LayoutOrder"]
  LOADK R26 K75 ["13+"]
  SETTABLEKS R26 R25 K25 ["Text"]
  LOADK R26 K73 ["text-title-medium content-emphasis auto-xy"]
  SETTABLEKS R26 R25 K29 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K69 ["Value"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K64 ["Age"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K30 [{"LayoutOrder", "tag"}]
  LOADN R22 7
  SETTABLEKS R22 R21 K28 ["LayoutOrder"]
  LOADK R22 K67 ["col gap-small align-x-center auto-xy"]
  SETTABLEKS R22 R21 K29 ["tag"]
  DUPTABLE R22 K70 [{"Label", "Value"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K28 ["LayoutOrder"]
  LOADK R26 K65 ["Maturity"]
  SETTABLEKS R26 R25 K25 ["Text"]
  LOADK R26 K71 ["text-body-small content-default auto-xy"]
  SETTABLEKS R26 R25 K29 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K68 ["Label"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K28 ["LayoutOrder"]
  LOADK R26 K76 ["Everyone"]
  SETTABLEKS R26 R25 K25 ["Text"]
  LOADK R26 K73 ["text-title-medium content-emphasis auto-xy"]
  SETTABLEKS R26 R25 K29 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K69 ["Value"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K65 ["Maturity"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K48 ["Attributes"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K30 [{"LayoutOrder", "tag"}]
  LOADN R18 4
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K77 ["row radius-medium size-full-0 auto-y gap-small align-y-center bg-shift-200 padding-small"]
  SETTABLEKS R18 R17 K29 ["tag"]
  DUPTABLE R18 K81 [{"Icon", "Rating", "Up", "Down"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 9
  DUPTABLE R21 K83 [{"LayoutOrder", "name", "size"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K28 ["LayoutOrder"]
  GETUPVAL R23 8
  GETTABLEKS R22 R23 K84 ["ThumbUp"]
  SETTABLEKS R22 R21 K82 ["name"]
  GETUPVAL R23 10
  GETTABLEKS R22 R23 K44 ["Large"]
  SETTABLEKS R22 R21 K14 ["size"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K78 ["Icon"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K30 [{"LayoutOrder", "tag"}]
  LOADN R22 2
  SETTABLEKS R22 R21 K28 ["LayoutOrder"]
  LOADK R22 K85 ["col grow auto-xy"]
  SETTABLEKS R22 R21 K29 ["tag"]
  DUPTABLE R22 K86 [{"Value", "Label"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K28 ["LayoutOrder"]
  LOADK R26 K72 ["94%"]
  SETTABLEKS R26 R25 K25 ["Text"]
  LOADK R26 K87 ["text-body-medium content-emphasis auto-xy"]
  SETTABLEKS R26 R25 K29 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K69 ["Value"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K28 ["LayoutOrder"]
  LOADK R26 K88 ["100 VOTES"]
  SETTABLEKS R26 R25 K25 ["Text"]
  LOADK R26 K71 ["text-body-small content-default auto-xy"]
  SETTABLEKS R26 R25 K29 ["tag"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K68 ["Label"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K49 ["Rating"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 6
  DUPTABLE R21 K89 [{"LayoutOrder", "icon", "size", "onActivated"}]
  LOADN R22 3
  SETTABLEKS R22 R21 K28 ["LayoutOrder"]
  GETUPVAL R23 8
  GETTABLEKS R22 R23 K84 ["ThumbUp"]
  SETTABLEKS R22 R21 K42 ["icon"]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K44 ["Large"]
  SETTABLEKS R22 R21 K14 ["size"]
  DUPCLOSURE R22 K90 [PROTO_3]
  SETTABLEKS R22 R21 K6 ["onActivated"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K79 ["Up"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 6
  DUPTABLE R21 K89 [{"LayoutOrder", "icon", "size", "onActivated"}]
  LOADN R22 4
  SETTABLEKS R22 R21 K28 ["LayoutOrder"]
  GETUPVAL R23 8
  GETTABLEKS R22 R23 K91 ["ThumbDown"]
  SETTABLEKS R22 R21 K42 ["icon"]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K44 ["Large"]
  SETTABLEKS R22 R21 K14 ["size"]
  DUPCLOSURE R22 K92 [PROTO_4]
  SETTABLEKS R22 R21 K6 ["onActivated"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K80 ["Down"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K49 ["Rating"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 5
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K93 ["This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen."]
  SETTABLEKS R18 R17 K25 ["Text"]
  LOADK R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K29 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K50 ["Description"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 6
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K95 ["Sheets can be dismissed by swiping down or tapping outside of the sheet area."]
  SETTABLEKS R18 R17 K25 ["Text"]
  LOADK R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K29 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K51 ["Description2"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 7
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K96 ["This sheet is fully responsive and will adapt to different screen sizes and orientations."]
  SETTABLEKS R18 R17 K25 ["Text"]
  LOADK R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K29 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K52 ["Description3"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 8
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K97 ["You can add as much content as you need inside the sheet, and it will scroll if the content exceeds the available space."]
  SETTABLEKS R18 R17 K25 ["Text"]
  LOADK R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K29 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K53 ["Description4"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 9
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K98 ["Sheets are a great way to provide additional context and actions without overwhelming the user with too much information at once."]
  SETTABLEKS R18 R17 K25 ["Text"]
  LOADK R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K29 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K54 ["Description5"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 10
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K99 ["This is the last piece of example content inside the sheet. You can customize the appearance and behavior of the sheet to fit your specific use case."]
  SETTABLEKS R18 R17 K25 ["Text"]
  LOADK R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K29 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K55 ["Description6"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 11
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K100 ["Thank you for checking out this example of a sheet component in Roblox using the Foundation library!"]
  SETTABLEKS R18 R17 K25 ["Text"]
  LOADK R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K29 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K56 ["Description7"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 12
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K101 ["Feel free to reach out if you have any questions or need further assistance."]
  SETTABLEKS R18 R17 K25 ["Text"]
  LOADK R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K29 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K57 ["Description8"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K36 [{"LayoutOrder", "Text", "tag"}]
  LOADN R18 13
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K102 ["Happy developing!"]
  SETTABLEKS R18 R17 K25 ["Text"]
  LOADK R18 K94 ["text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"]
  SETTABLEKS R18 R17 K29 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K58 ["Description9"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K21 ["Content"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K22 ["Actions"]
  LOADNIL R13
  DUPTABLE R14 K106 [{"More", "Invite", "Join"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K89 [{"LayoutOrder", "icon", "size", "onActivated"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  GETUPVAL R19 8
  GETTABLEKS R18 R19 K107 ["CircleThreeDotsHorizontal"]
  SETTABLEKS R18 R17 K42 ["icon"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K44 ["Large"]
  SETTABLEKS R18 R17 K14 ["size"]
  DUPCLOSURE R18 K108 [PROTO_5]
  SETTABLEKS R18 R17 K6 ["onActivated"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K103 ["More"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K89 [{"LayoutOrder", "icon", "size", "onActivated"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  GETUPVAL R19 8
  GETTABLEKS R18 R19 K109 ["PersonArrowFromBottomRight"]
  SETTABLEKS R18 R17 K42 ["icon"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K44 ["Large"]
  SETTABLEKS R18 R17 K14 ["size"]
  DUPCLOSURE R18 K110 [PROTO_6]
  SETTABLEKS R18 R17 K6 ["onActivated"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K104 ["Invite"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 1
  DUPTABLE R17 K113 [{"LayoutOrder", "text", "icon", "size", "variant", "fillBehavior", "onActivated"}]
  LOADN R18 3
  SETTABLEKS R18 R17 K28 ["LayoutOrder"]
  LOADK R18 K105 ["Join"]
  SETTABLEKS R18 R17 K7 ["text"]
  GETUPVAL R19 8
  GETTABLEKS R18 R19 K114 ["PlayLarge"]
  SETTABLEKS R18 R17 K42 ["icon"]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K44 ["Large"]
  SETTABLEKS R18 R17 K14 ["size"]
  GETUPVAL R19 11
  GETTABLEKS R18 R19 K115 ["Emphasis"]
  SETTABLEKS R18 R17 K111 ["variant"]
  GETUPVAL R19 12
  GETTABLEKS R18 R19 K116 ["Fill"]
  SETTABLEKS R18 R17 K112 ["fillBehavior"]
  NEWCLOSURE R18 P7
  CAPTURE VAL R2
  SETTABLEKS R18 R17 K6 ["onActivated"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K105 ["Join"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["Actions"]
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

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"tag"}]
  LOADK R4 K3 ["row gap-medium size-full-0 auto-y items-center"]
  SETTABLEKS R4 R3 K1 ["tag"]
  DUPTABLE R4 K6 [{"Avatar", "Info"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K9 [{"size", "userId"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K10 ["Large"]
  SETTABLEKS R8 R7 K7 ["size"]
  LOADK R8 K11 [24813339]
  SETTABLEKS R8 R7 K8 ["userId"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Avatar"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K13 [{"LayoutOrder", "tag"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K12 ["LayoutOrder"]
  LOADK R8 K14 ["col gap-xsmall fill auto-xy"]
  SETTABLEKS R8 R7 K1 ["tag"]
  DUPTABLE R8 K17 [{"Username", "UserId"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K19 [{"LayoutOrder", "Text", "tag"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K12 ["LayoutOrder"]
  LOADK R13 K20 ["User #%*"]
  GETTABLEKS R15 R0 K21 ["index"]
  NAMECALL R13 R13 K22 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K18 ["Text"]
  LOADK R12 K23 ["text-body-medium content-emphasis auto-xy text-truncate-split"]
  SETTABLEKS R12 R11 K1 ["tag"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["Username"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K19 [{"LayoutOrder", "Text", "tag"}]
  LOADN R12 2
  SETTABLEKS R12 R11 K12 ["LayoutOrder"]
  LOADK R13 K24 ["@user%*"]
  GETTABLEKS R15 R0 K21 ["index"]
  NAMECALL R13 R13 K22 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K18 ["Text"]
  LOADK R12 K25 ["text-body-small content-default auto-xy text-truncate-split"]
  SETTABLEKS R12 R11 K1 ["tag"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["UserId"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K5 ["Info"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_13:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  GETUPVAL R2 1
  ADDK R1 R2 K0 [1]
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  LOADN R2 1
  GETUPVAL R4 1
  SUBK R3 R4 K0 [1]
  FASTCALL2 MATH_MAX R2 R3 [+3]
  GETIMPORT R1 K3 [math.max]
  CALL R1 2 1
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useState"]
  LOADN R4 1
  CALL R3 1 2
  NEWTABLE R5 0 0
  LOADN R8 1
  MOVE R6 R3
  LOADN R7 1
  FORNPREP R6
  MOVE R10 R5
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K4 [{"index", "key"}]
  SETTABLEKS R8 R13 K2 ["index"]
  SETTABLEKS R8 R13 K3 ["key"]
  CALL R11 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R9 K7 [table.insert]
  CALL R9 -1 0
  FORNLOOP R6
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["Fragment"]
  LOADNIL R8
  DUPTABLE R9 K11 [{"Button", "Sheet"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K14 [{"onActivated", "text"}]
  NEWCLOSURE R13 P0
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K12 ["onActivated"]
  LOADK R13 K15 ["Open Sheet (Auto Size)"]
  SETTABLEKS R13 R12 K13 ["text"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K9 ["Button"]
  JUMPIFNOT R1 [+144]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K16 ["Root"]
  DUPTABLE R12 K20 [{"preferCenterSheet", "size", "onClose"}]
  GETTABLEKS R14 R0 K21 ["controls"]
  GETTABLEKS R13 R14 K17 ["preferCenterSheet"]
  SETTABLEKS R13 R12 K17 ["preferCenterSheet"]
  GETTABLEKS R14 R0 K21 ["controls"]
  GETTABLEKS R13 R14 K18 ["size"]
  SETTABLEKS R13 R12 K18 ["size"]
  NEWCLOSURE R13 P1
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K19 ["onClose"]
  DUPTABLE R13 K25 [{"Header", "Content", "Actions"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K22 ["Header"]
  LOADNIL R16
  DUPTABLE R17 K27 [{"Title"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K31 [{"LayoutOrder", "Text", "tag"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K28 ["LayoutOrder"]
  LOADK R21 K32 ["Account Switcher"]
  SETTABLEKS R21 R20 K29 ["Text"]
  LOADK R21 K33 ["text-heading-large content-emphasis auto-xy text-truncate-split"]
  SETTABLEKS R21 R20 K30 ["tag"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K26 ["Title"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K22 ["Header"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K23 ["Content"]
  LOADNIL R16
  MOVE R17 R5
  CALL R14 3 1
  SETTABLEKS R14 R13 K23 ["Content"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K24 ["Actions"]
  LOADNIL R16
  DUPTABLE R17 K36 [{"AddAccount", "RemoveAccount"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 2
  DUPTABLE R20 K39 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "onActivated"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K28 ["LayoutOrder"]
  LOADK R21 K40 ["Add Account"]
  SETTABLEKS R21 R20 K13 ["text"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K41 ["Large"]
  SETTABLEKS R21 R20 K18 ["size"]
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K42 ["Emphasis"]
  SETTABLEKS R21 R20 K37 ["variant"]
  GETUPVAL R22 7
  GETTABLEKS R21 R22 K43 ["Fill"]
  SETTABLEKS R21 R20 K38 ["fillBehavior"]
  NEWCLOSURE R21 P2
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R21 R20 K12 ["onActivated"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K34 ["AddAccount"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 2
  DUPTABLE R20 K39 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "onActivated"}]
  LOADN R21 2
  SETTABLEKS R21 R20 K28 ["LayoutOrder"]
  LOADK R21 K44 ["Remove Account"]
  SETTABLEKS R21 R20 K13 ["text"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K41 ["Large"]
  SETTABLEKS R21 R20 K18 ["size"]
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K45 ["Alert"]
  SETTABLEKS R21 R20 K37 ["variant"]
  GETUPVAL R22 7
  GETTABLEKS R21 R22 K43 ["Fill"]
  SETTABLEKS R21 R20 K38 ["fillBehavior"]
  NEWCLOSURE R21 P3
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R21 R20 K12 ["onActivated"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K35 ["RemoveAccount"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K24 ["Actions"]
  CALL R10 3 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K10 ["Sheet"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K8 ["Components"]
  GETTABLEKS R11 R12 K16 ["Avatar"]
  CALL R10 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R13 R1 K17 ["BuilderIcons"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K15 ["Icon"]
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R0 K18 ["Enums"]
  GETTABLEKS R13 R14 K19 ["IconSize"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R0 K18 ["Enums"]
  GETTABLEKS R14 R15 K20 ["InputSize"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R16 R0 K18 ["Enums"]
  GETTABLEKS R15 R16 K21 ["ButtonVariant"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R17 R0 K18 ["Enums"]
  GETTABLEKS R16 R17 K22 ["FillBehavior"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R18 R0 K23 ["Utility"]
  GETTABLEKS R17 R18 K24 ["useScaledValue"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R19 R0 K18 ["Enums"]
  GETTABLEKS R18 R19 K25 ["DialogSize"]
  CALL R17 1 1
  DUPCLOSURE R18 K26 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R15
  DUPCLOSURE R19 K27 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R16
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPCLOSURE R20 K28 [PROTO_12]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R6
  DUPCLOSURE R21 K29 [PROTO_17]
  CAPTURE VAL R2
  CAPTURE VAL R20
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  DUPTABLE R22 K33 [{"summary", "stories", "controls"}]
  LOADK R23 K9 ["Sheet"]
  SETTABLEKS R23 R22 K30 ["summary"]
  NEWTABLE R23 0 3
  DUPTABLE R24 K36 [{"name", "story"}]
  LOADK R25 K37 ["Sheet (auto)"]
  SETTABLEKS R25 R24 K34 ["name"]
  SETTABLEKS R18 R24 K35 ["story"]
  DUPTABLE R25 K36 [{"name", "story"}]
  LOADK R26 K38 ["Sheet (manual)"]
  SETTABLEKS R26 R25 K34 ["name"]
  SETTABLEKS R19 R25 K35 ["story"]
  DUPTABLE R26 K36 [{"name", "story"}]
  LOADK R27 K39 ["Sheet (auto size)"]
  SETTABLEKS R27 R26 K34 ["name"]
  SETTABLEKS R21 R26 K35 ["story"]
  SETLIST R23 R24 3 [1]
  SETTABLEKS R23 R22 K31 ["stories"]
  DUPTABLE R23 K42 [{"preferCenterSheet", "size"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K40 ["preferCenterSheet"]
  NEWTABLE R24 0 2
  GETTABLEKS R25 R17 K43 ["Medium"]
  GETTABLEKS R26 R17 K44 ["Large"]
  SETLIST R24 R25 2 [1]
  SETTABLEKS R24 R23 K41 ["size"]
  SETTABLEKS R23 R22 K32 ["controls"]
  RETURN R22 1
