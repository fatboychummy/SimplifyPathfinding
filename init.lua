--- Combines submodules.
-- This file combines all submodules into one module to tie everything together.
-- @module[kind=pathfind] Pathfinder

-- Get the prefix to be used for requiring submodules.
-- This allows this folder to be named anything.
local prefix = ... .. "."

-- Simple sub-require function. Makes life easier.
local function _require( module )
  return require( prefix .. module )
end

-- Include all of the required files.
local Map = _require "Map"
local Path = _require "Path"
local TrackingTurtle = _require "TrackingTurtle"
local DontStop = _require "data.DontStopMovement"

-- Create our module
local M = {}

--- Create a new Pathfinder object.
-- @treturn table The pathfinder object.
function M.create()
  -- create all of the objects we will need.
  local map = Map.create()
  local path = Path.create()
  local trackingTurtle = TrackingTurtle.create()

  -- create the returned object
  local pathfinder = {}

  -- TODO: Document these, too tired tonight.
  function pathfinder.scanUsing(...)

  end

  function pathfinder.pathfind(coordinateA, coordinateB, initialFacing)

  end

  function pathfinder.getMap()
    return map
  end

  function pathfinder.getPathfinder()
    return path
  end

  function pathfinder.getTrackingTurtle()
    return trackingTurtle
  end

  return pathfinder
end

--- Load a pathfinder object from a file.
-- Acts mostly as a passthrough to Map.load().
-- @tparam string filename The file to load from, in absolute form.
-- @treturn boolean,table Whether the file loading was successful, and the data as a pathfinder object.
function M.load(filename)

end

--- Save a pathfinder object to a file.
-- Acts mostly as a passthrough to Map.save().
-- @tparam string filename The file to save to, in absolute form.
-- @tparam table pathfinder The pathfinder object that was created via either create or load.
-- @treturn boolean Whether saving the file[s] was successful or not.
function M.save(filename, pathfinder)

end

return M
