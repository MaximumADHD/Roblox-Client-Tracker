PROTO_0:
        0 LOADK                            R2 K0 ["Assistant-Skills-Row-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["Assistant-Skills-Toggle-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 ["Assistant-IntegrationItem-ToolPill-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R2 K0 ["Assistant-ScopePermissions-PresetItem-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R2 K0 ["Assistant-ScopePermissions-ScopeCheckbox-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R2 K0 ["Assistant-QuickConnect-Toggle-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R2 K0 ["Assistant-QuickConnect-CommandLabel-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_7:
        0 LOADK                            R2 K0 ["Assistant-QuickConnect-CommandCopy-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R2 K0 ["Assistant-ProviderCheckbox-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_9:
        0 LOADK                            R2 K0 ["Assistant-APIKey-Display-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_10:
        0 LOADK                            R2 K0 ["Assistant-APIKey-EditButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_11:
        0 LOADK                            R2 K0 ["Assistant-APIKey-Input-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_12:
        0 LOADK                            R2 K0 ["Assistant-APIKey-SaveButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_13:
        0 LOADK                            R2 K0 ["Assistant-APIKey-CancelButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_14:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 FASTCALL1                        TYPEOF R5 ; [+3]
        5 MOVE                             R7 R5
        6 GETIMPORT                        R6 K1 [typeof]
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+5]
       11 GETUPVAL                         R6 0
       12 MOVE                             R7 R5
       13 CALL                             R6 1 0
       14 JUMP                             ; [+49]
       15 LOADNIL                          R6
       16 FASTCALL1                        TYPEOF R5 ; [+3]
       17 MOVE                             R8 R5
       18 GETIMPORT                        R7 K1 [typeof]
       20 CALL                             R7 1 1
       21 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+3]
       23 MOVE                             R6 R5
       24 JUMP                             ; [+24]
       25 FASTCALL1                        TYPEOF R5 ; [+3]
       26 MOVE                             R8 R5
       27 GETIMPORT                        R7 K1 [typeof]
       29 CALL                             R7 1 1
       30 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+5]
       32 MOVE                             R7 R5
       33 CALL                             R7 0 1
       34 MOVE                             R6 R7
       35 JUMP                             ; [+13]
       36 GETIMPORT                        R7 K6 [error]
       38 LOADK                            R9 K7 ["Unexpected value type: %*"]
       39 FASTCALL1                        TYPEOF R5 ; [+3]
       40 MOVE                             R12 R5
       41 GETIMPORT                        R11 K1 [typeof]
       43 CALL                             R11 1 1
       44 NAMECALL                         R9 R9 K8 ["format"]
       46 CALL                             R9 2 1
       47 MOVE                             R8 R9
       48 CALL                             R7 1 0
       49 GETUPVAL                         R8 1
       50 GETTABLE                         R7 R8 R6
       51 JUMPIFNOT                        R7 ; [+9]
       52 GETIMPORT                        R7 K6 [error]
       54 LOADK                            R9 K9 ["Duplicate test id found: %*"]
       55 MOVE                             R11 R6
       56 NAMECALL                         R9 R9 K8 ["format"]
       58 CALL                             R9 2 1
       59 MOVE                             R8 R9
       60 CALL                             R7 1 0
       61 GETUPVAL                         R7 1
       62 LOADB                            R8 1
       63 SETTABLE                         R8 R7 R6
       64 FORGLOOP                         R1 2 ; [-61]
       66 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 DUPTABLE                         R1 K8 [{[1] = "Assistant-Header-ToggleThreadsMenu", ["SettingsButton"] = "Assistant-Header-SettingsButton", ["SettingsContent"] = "Assistant-Header-SettingsContent", ["VersionMismatchIcon"] = "Assistant-Header-VersionMismatchIcon"}]
        4 SETTABLEKS                       R1 R0 K9 ["Header"]
        6 DUPTABLE                         R1 K16 [{["Container"] = "Assistant-ThreadsMenu-Container", ["ExistingThreadButton"] = "Assistant-ThreadsMenu-ExistingThreadButton", ["AddThreadButton"] = "Assistant-ThreadsMenu-AddThreadButton"}]
        7 SETTABLEKS                       R1 R0 K17 ["ThreadsMenu"]
        9 DUPTABLE                         R1 K22 [{["OptionsButton"] = "Assistant-ThreadEntry-OptionsButton", ["RenameInput"] = "Assistant-ThreadEntry-RenameInput"}]
       10 SETTABLEKS                       R1 R0 K23 ["ThreadEntry"]
       12 DUPTABLE                         R1 K25 [{["Container"] = "Assistant-ThreadOptionsMenu-Container"}]
       13 SETTABLEKS                       R1 R0 K26 ["ThreadOptionsMenu"]
       15 DUPTABLE                         R1 K39 [{["Container"] = "Assistant-InputArea-Container", ["StopButton"] = "Assistant-InputArea-StopButton", ["AttachImageButton"] = "Assistant-InputArea-AttachImageButton", ["AttachedImagesPreview"] = "Assistant-InputArea-AttachedImagesPreview", ["AssistantModeDropdown"] = "Assistant-InputArea-AssistantModeDropdown", ["AssistantModeDropdownMenu"] = "Assistant-InputArea-AssistantModeDropdownMenu", ["Footer"]}]
       16 DUPTABLE                         R2 K43 [{["Container"] = "Assistant-InputArea-Footer-Container", ["Icon"] = "Assistant-InputArea-Footer-Icon"}]
       17 SETTABLEKS                       R2 R1 K38 ["Footer"]
       19 SETTABLEKS                       R1 R0 K44 ["InputArea"]
       21 DUPTABLE                         R1 K52 [{["Container"] = "Assistant-MessageActions-Container", ["ThumbsUp"] = "Assistant-MessageActions-ThumbsUp", ["ThumbsDown"] = "Assistant-MessageActions-ThumbsDown", ["Retry"] = "Assistant-MessageActions-Retry"}]
       22 SETTABLEKS                       R1 R0 K53 ["MessageActions"]
       24 DUPTABLE                         R1 K63 [{["Container"] = "Assistant-FeedbackView-Container", ["Dropdown"] = "Assistant-FeedbackView-Dropdown", ["TextArea"] = "Assistant-FeedbackView-TextArea", ["Close"] = "Assistant-FeedbackView-Close", ["Submit"] = "Assistant-FeedbackView-Submit"}]
       25 SETTABLEKS                       R1 R0 K64 ["FeedbackView"]
       27 LOADK                            R1 K65 ["Assistant-GenerationIndicator"]
       28 SETTABLEKS                       R1 R0 K66 ["GenerationIndicator"]
       30 LOADK                            R1 K67 ["Assistant-ModelQualityWarning"]
       31 SETTABLEKS                       R1 R0 K68 ["ModelQualityWarning"]
       33 DUPTABLE                         R1 K71 [{["Button"] = "Assistant-ServerManagement-Button"}]
       34 SETTABLEKS                       R1 R0 K72 ["ServerManagement"]
       36 DUPTABLE                         R1 K77 [{["Checkbox"] = "Assistant-McpServer-Checkbox", ["CheckboxInput"] = "Assistant-McpServer-Checkbox--container"}]
       37 SETTABLEKS                       R1 R0 K78 ["McpServer"]
       39 DUPTABLE                         R1 K81 [{["Container"] = "Assistant-SlashCommandMenu-Container", ["Item"]}]
       40 DUPTABLE                         R2 K85 [{["Container"] = "Assistant-SlashCommandMenu-Item-Container", ["Command"] = "Assistant-SlashCommandMenu-Item-Command"}]
       41 SETTABLEKS                       R2 R1 K80 ["Item"]
       43 SETTABLEKS                       R1 R0 K86 ["SlashCommandMenu"]
       45 DUPTABLE                         R1 K89 [{["Container"] = "Assistant-ToolMenuView-Container", ["Option"]}]
       46 DUPTABLE                         R2 K92 [{["Container"] = "Assistant-ToolMenuView-Option-Container", ["Checkbox"] = "Assistant-ToolMenuView-Option-Checkbox"}]
       47 SETTABLEKS                       R2 R1 K88 ["Option"]
       49 SETTABLEKS                       R1 R0 K93 ["ToolMenuView"]
       51 DUPTABLE                         R1 K96 [{["Container"] = "Assistant-ModelPicker-Container", ["Dropdown"] = "Assistant-ModelPicker-Dropdown"}]
       52 SETTABLEKS                       R1 R0 K97 ["ModelPicker"]
       54 DUPTABLE                         R1 K101 [{["Root"] = "Assistant-Carousel-Root", ["Container"] = "Assistant-Carousel-Container"}]
       55 SETTABLEKS                       R1 R0 K102 ["Carousel"]
       57 DUPTABLE                         R1 K106 [{["Root"] = "Assistant-CarouselItem-Root", ["Selected"] = "Assistant-CarouselItem-Selected"}]
       58 SETTABLEKS                       R1 R0 K107 ["CarouselItem"]
       60 DUPTABLE                         R1 K113 [{["Continue"] = "Assistant-Alert-Continue", ["EditApiKeys"] = "Assistant-Alert-EditApiKeys", ["Close"] = "Assistant-Alert-Close"}]
       61 SETTABLEKS                       R1 R0 K114 ["Alert"]
       63 DUPTABLE                         R1 K119 [{["Image"] = "Assistant-ImageContent-Image", ["Expand"] = "Assistant-ImageContent-Expand"}]
       64 SETTABLEKS                       R1 R0 K120 ["ImageContent"]
       66 DUPTABLE                         R1 K122 [{["Expand"] = "Assistant-AssetInsert-Expand"}]
       67 SETTABLEKS                       R1 R0 K123 ["AssetInsert"]
       69 DUPTABLE                         R1 K125 [{["Expand"] = "Assistant-AssetSearch-Expand"}]
       70 SETTABLEKS                       R1 R0 K126 ["AssetSearch"]
       72 DUPTABLE                         R1 K128 [{["Expand"] = "Assistant-AssetVariation-Expand"}]
       73 SETTABLEKS                       R1 R0 K129 ["AssetVariation"]
       75 DUPTABLE                         R1 K135 [{["Expand"] = "Assistant-MaterialGen-Expand", ["StudsPerTileValueBar"] = "Assistant-MaterialGen-StudsPerTileValueBar", ["OrganicPatternToggle"] = "Assistant-MaterialGen-OrganicPatternToggle"}]
       76 SETTABLEKS                       R1 R0 K136 ["MaterialGen"]
       78 DUPTABLE                         R1 K144 [{["Expand"] = "Assistant-MeshGen-Expand", ["PreviewImage"] = "Assistant-MeshGen-PreviewImage", ["UseSelection"] = "Assistant-MeshGen-UseSelection", ["MaxTriangles"] = "Assistant-MeshGen-MaxTriangles"}]
       79 SETTABLEKS                       R1 R0 K145 ["MeshGen"]
       81 DUPTABLE                         R1 K153 [{["Expand"] = "Assistant-RunCode-Expand", ["Copy"] = "Assistant-RunCode-Copy", ["Run"] = "Assistant-RunCode-Run", ["Stop"] = "Assistant-RunCode-Stop"}]
       82 SETTABLEKS                       R1 R0 K154 ["RunCode"]
       84 DUPTABLE                         R1 K156 [{["Expand"] = "Assistant-Thinking-Expand"}]
       85 SETTABLEKS                       R1 R0 K157 ["Thinking"]
       87 DUPTABLE                         R1 K166 [{["Warning"] = "Assistant-ToolConfirmation-Warning", ["Accept"] = "Assistant-ToolConfirmation-Accept", ["Reject"] = "Assistant-ToolConfirmation-Reject", ["AlwaysAccept"] = "Assistant-ToolConfirmation-AlwaysAccept"}]
       88 SETTABLEKS                       R1 R0 K167 ["ToolConfirmation"]
       90 DUPTABLE                         R1 K175 [{["Warning"] = "Assistant-ScriptChangeConfirmation-Warning", ["ReviewEach"] = "Assistant-ScriptChangeConfirmation-ReviewEach", ["AcceptAllPrompt"] = "Assistant-ScriptChangeConfirmation-AcceptAllPrompt", ["AcceptAllSession"] = "Assistant-ScriptChangeConfirmation-AcceptAllSession"}]
       91 SETTABLEKS                       R1 R0 K176 ["ScriptChangeConfirmation"]
       93 DUPTABLE                         R1 K179 [{["Icon"] = "Assistant-Summarized-Icon", ["Expand"] = "Assistant-Summarized-Expand"}]
       94 SETTABLEKS                       R1 R0 K180 ["Summarized"]
       96 DUPTABLE                         R1 K183 [{["Title"] = "Assistant-ReadFile-Title"}]
       97 SETTABLEKS                       R1 R0 K184 ["ReadFile"]
       99 DUPTABLE                         R1 K190 [{["Expand"] = "Assistant-InputRequested-Expand", ["ReviveButton"] = "Assistant-InputRequested-ReviveButton", ["CloseButton"] = "Assistant-InputRequested-CloseButton"}]
      100 SETTABLEKS                       R1 R0 K191 ["InputRequested"]
      102 DUPTABLE                         R1 K200 [{["StepperPrev"] = "Assistant-QuestionAnswer-StepperPrev", ["StepperNext"] = "Assistant-QuestionAnswer-StepperNext", ["ConfirmCheckbox"] = "Assistant-QuestionAnswer-ConfirmCheckbox", ["Dismiss"] = "Assistant-QuestionAnswer-Dismiss"}]
      103 SETTABLEKS                       R1 R0 K201 ["QuestionAnswer"]
      105 DUPTABLE                         R1 K208 [{["AddIntegrationDialog"] = "Assistant-IntegrationMenu-AddIntegrationDialog", ["TabContent"] = "Assistant-IntegrationMenu-TabContent", ["EmptyState"] = "Assistant-IntegrationMenu-EmptyState"}]
      106 SETTABLEKS                       R1 R0 K209 ["IntegrationMenu"]
      108 DUPTABLE                         R1 K227 [{["TabContent"] = "Assistant-Skills-TabContent", ["CreateNewButton"] = "Assistant-Skills-CreateNewButton", ["CreateFromTextButton"] = "Assistant-Skills-CreateFromTextButton", ["RefreshButton"] = "Assistant-Skills-RefreshButton", ["UploadButton"] = "Assistant-Skills-UploadButton", ["PersonalGroup"] = "Assistant-Skills-PersonalGroup", ["RobloxGroup"] = "Assistant-Skills-RobloxGroup", ["Row"], ["Toggle"], ["CreateModal"], ["DetailPane"]}]
      109 DUPCLOSURE                       R2 K228 [PROTO_0]
      110 SETTABLEKS                       R2 R1 K223 ["Row"]
      112 DUPCLOSURE                       R2 K229 [PROTO_1]
      113 SETTABLEKS                       R2 R1 K224 ["Toggle"]
      115 DUPTABLE                         R2 K239 [{["Container"] = "Assistant-Skills-CreateModal-Container", ["NameInput"] = "Assistant-Skills-CreateModal-NameInput", ["DescriptionInput"] = "Assistant-Skills-CreateModal-DescriptionInput", ["CreateButton"] = "Assistant-Skills-CreateModal-CreateButton", ["CancelButton"] = "Assistant-Skills-CreateModal-CancelButton"}]
      116 SETTABLEKS                       R2 R1 K225 ["CreateModal"]
      118 DUPTABLE                         R2 K251 [{["Container"] = "Assistant-Skills-DetailPane-Container", ["Empty"] = "Assistant-Skills-DetailPane-Empty", ["SourceUri"] = "Assistant-Skills-DetailPane-SourceUri", ["OpenButton"] = "Assistant-Skills-DetailPane-OpenButton", ["DuplicateButton"] = "Assistant-Skills-DetailPane-DuplicateButton", ["DeleteButton"] = "Assistant-Skills-DetailPane-DeleteButton"}]
      119 SETTABLEKS                       R2 R1 K226 ["DetailPane"]
      121 SETTABLEKS                       R1 R0 K252 ["Skills"]
      123 DUPTABLE                         R1 K260 [{["Dialog"] = "Assistant-IntegrationItem-Dialog", ["Header"] = "Assistant-IntegrationItem-Header", ["ToolsContainer"] = "Assistant-IntegrationItem-ToolsContainer", ["ToolPill"], ["Actions"]}]
      124 DUPCLOSURE                       R2 K261 [PROTO_2]
      125 SETTABLEKS                       R2 R1 K258 ["ToolPill"]
      127 DUPTABLE                         R2 K267 [{["Toggle"] = "Assistant-IntegrationItem-Actions-Toggle", ["OverflowButton"] = "Assistant-IntegrationItem-Actions-OverflowButton", ["OverflowContent"] = "Assistant-IntegrationItem-Actions-OverflowContent"}]
      128 SETTABLEKS                       R2 R1 K259 ["Actions"]
      130 SETTABLEKS                       R1 R0 K268 ["IntegrationItem"]
      132 DUPTABLE                         R1 K278 [{["Toggle"] = "Assistant-McpSetup-Toggle", ["StartupCommandLabel"] = "Assistant-McpSetup-StartupCommandLabel", ["JsonConfigLabel"] = "Assistant-McpSetup-JsonConfigLabel", ["StartupCommandCopy"] = "Assistant-McpSetup-StartupCommandCopy", ["JsonConfigCopy"] = "Assistant-McpSetup-JsonConfigCopy"}]
      133 SETTABLEKS                       R1 R0 K279 ["McpSetup"]
      135 DUPTABLE                         R1 K285 [{["Container"] = "Assistant-ScopePermissions-Container", ["PresetGroup"] = "Assistant-ScopePermissions-PresetGroup", ["PresetItem"], ["ScopeCheckbox"]}]
      136 DUPCLOSURE                       R2 K286 [PROTO_3]
      137 SETTABLEKS                       R2 R1 K283 ["PresetItem"]
      139 DUPCLOSURE                       R2 K287 [PROTO_4]
      140 SETTABLEKS                       R2 R1 K284 ["ScopeCheckbox"]
      142 SETTABLEKS                       R1 R0 K288 ["ScopePermissions"]
      144 DUPTABLE                         R1 K293 [{["Section"] = "Assistant-QuickConnect-Section", ["Toggle"], ["CommandLabel"], ["CommandCopy"]}]
      145 DUPCLOSURE                       R2 K294 [PROTO_5]
      146 SETTABLEKS                       R2 R1 K224 ["Toggle"]
      148 DUPCLOSURE                       R2 K295 [PROTO_6]
      149 SETTABLEKS                       R2 R1 K291 ["CommandLabel"]
      151 DUPCLOSURE                       R2 K296 [PROTO_7]
      152 SETTABLEKS                       R2 R1 K292 ["CommandCopy"]
      154 SETTABLEKS                       R1 R0 K297 ["QuickConnect"]
      156 DUPCLOSURE                       R1 K298 [PROTO_8]
      157 SETTABLEKS                       R1 R0 K299 ["ProviderCheckbox"]
      159 DUPTABLE                         R1 K304 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      160 DUPCLOSURE                       R2 K305 [PROTO_9]
      161 SETTABLEKS                       R2 R1 K300 ["Display"]
      163 DUPCLOSURE                       R2 K306 [PROTO_10]
      164 SETTABLEKS                       R2 R1 K301 ["EditButton"]
      166 DUPCLOSURE                       R2 K307 [PROTO_11]
      167 SETTABLEKS                       R2 R1 K302 ["Input"]
      169 DUPCLOSURE                       R2 K308 [PROTO_12]
      170 SETTABLEKS                       R2 R1 K303 ["SaveButton"]
      172 DUPCLOSURE                       R2 K309 [PROTO_13]
      173 SETTABLEKS                       R2 R1 K237 ["CancelButton"]
      175 SETTABLEKS                       R1 R0 K310 ["APIKey"]
      177 DUPTABLE                         R1 K314 [{["Container"] = "Assistant-AttachedImagePreview-Container", ["Remove"] = "Assistant-AttachedImagePreview-Remove"}]
      178 SETTABLEKS                       R1 R0 K315 ["AttachedImagePreview"]
      180 DUPTABLE                         R1 K327 [{["SuggestCheckbox"] = "Assistant-SegPropRow-SuggestCheckbox", ["RefreshButton"] = "Assistant-SegPropRow-RefreshButton", ["WarningToggle"] = "Assistant-PropRow-WarningToggle", ["CancelButton"] = "Assistant-PropRow-CancelButton", ["SuggestButton"] = "Assistant-PropRow-SuggestButton", ["UploadButton"] = "Assistant-PropRow-UploadButton", ["DeletePillButton"] = "Assistant-PropRow-DeletePillButton"}]
      181 SETTABLEKS                       R1 R0 K328 ["SegmentationPropertyRow"]
      183 GETIMPORT                        R1 K330 [pcall]
      185 GETIMPORT                        R2 K332 [game]
      187 GETTABLEKS                       R2 R2 K333 ["GetService"]
      189 GETIMPORT                        R3 K332 [game]
      191 LOADK                            R4 K334 ["ProcessService"]
      192 CALL                             R1 3 1
      193 JUMPIFNOT                        R1 ; [+8]
      194 NEWTABLE                         R2 0 0
      196 DUPCLOSURE                       R3 K335 [PROTO_14]
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R2
      199 MOVE                             R4 R3
      200 MOVE                             R5 R0
      201 CALL                             R4 1 0
      202 RETURN                           R0 1
