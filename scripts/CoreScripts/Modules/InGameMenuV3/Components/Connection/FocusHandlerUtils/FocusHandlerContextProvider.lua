--!nonstrict
--[[
	This component needs to be mounted on top of a tree containing FocusHandler components.
    It handles focus hand-offs so that they happen in a consistent order, and it
    implements a cache to keep track of what element was last highlighted before
    a specific FocusHandler lost focus.
]]

local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local FocusHandlerContext = require(script.Parent.FocusHandlerContext)

local FocusHandlerContextProvider = Roact.PureComponent:extend("FocusHandlerContextProvider")

function FocusHandlerContextProvider:init()
    self.state = {
        candidateHandlerId = nil,
        currentHandlerId = nil,
    }
    self.previousSelections = {}
end

function FocusHandlerContextProvider:requestFocusForHandlerId(newHandlerId)
    self:setState(function(state)
        if state.currentHandlerId == nil then
            return {
                currentHandlerId = newHandlerId,
            }
        elseif newHandlerId ~= state.currentHandlerId then
            return {
                candidateHandlerId = newHandlerId
            }
        else
            return nil
        end
    end)
end

function FocusHandlerContextProvider:blurCurrentFocusHandler(handlerId, shouldForgetPreviousSelection)
    self:setState(function(state)
        if state.currentHandlerId == handlerId then
            local previousHandlerSelectionToRemember = nil
            if not shouldForgetPreviousSelection then
                previousHandlerSelectionToRemember = GuiService.SelectedCoreObject
            end

            self.previousSelections[handlerId] = previousHandlerSelectionToRemember

            local stateUpdate
            if state.candidateHandlerId ~= nil then
                stateUpdate = {
                    currentHandlerId = state.candidateHandlerId,
                    candidateHandlerId = Roact.None
                }
            else
                stateUpdate = {currentHandlerId = Roact.None}
            end
            return stateUpdate
        else
            return nil
        end
    end)
end

function FocusHandlerContextProvider:forgetLastSelectionForHandlerId(handlerId)
    self.previousSelections[handlerId] = nil
end

function FocusHandlerContextProvider:render()
    return Roact.createElement(FocusHandlerContext.Provider, {
        value = {
            currentHandlerId = self.state.currentHandlerId,
            candidateHandlerId = self.state.candidateHandlerId,
            previousSelections = self.previousSelections,
            requestFocusForHandlerId = function (newHandlerId)
                self:requestFocusForHandlerId(newHandlerId)
            end,
            forgetLastSelectionForHandlerId = function(handlerId)
                self:forgetLastSelectionForHandlerId(handlerId)
            end,
            blurCurrentFocusHandler = function(handlerId, shouldForgetPreviousSelection)
                self:blurCurrentFocusHandler(handlerId, shouldForgetPreviousSelection)
            end,
        }
    }, self.props[Roact.Children])
end

return FocusHandlerContextProvider
