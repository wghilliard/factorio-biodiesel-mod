global.biodiesel_engines = {}
local engine_name = "algae-farm"

-- function printAll(text)
--   if type (text) == "table" then
--     text = serpent.block(text, {comment = false})
--   end
-- 	-- log (text) -- no log!
-- 	for player_index, player in pairs (game.players) do
-- 		game.players[player_index].print (text)
-- 	end
-- end


local function register_item(entity)
  -- if global.biodiesel_engines == nil then
  --   global.biodiesel_engines = {}
  -- end
  global.biodiesel_engines[entity.unit_number] = entity
end

local function unregister_item(entity)
  -- if global.biodiesel_engines == nil then
  --   global.biodiesel_engines = {}
  -- end
  global.biodiesel_engines[entity.unit_number] = nil
end

-- TODO
local was_daylight = false

local function iz_daylight(event)
  local active = game.surfaces[1].darkness < .02

  for x, engine in pairs(global.biodiesel_engines) do
    if engine ~= nil then
      engine.active = active
    end
  end
end


local function on_built(event)
  local entity = event.created_entity
  if entity.name == engine_name then
		register_item(entity)
  end
end

local function on_remove(event)
  local entity = event._entity
  if entity.name == engine_name then
		unregister_item(entity)
  end
end

local function initialize()
  local entities = game.surfaces[1].find_entities_filtered{name=engine_name}
  for x, engine in pairs(entities) do
    register_item(engine)
  end
end

script.on_init(initialize)

local build_events = {defines.events.on_built_entity, defines.events.on_robot_built_entity}
script.on_event(build_events, on_built)
local remove_events = {defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity,defines.events.on_entity_died}
script.on_event(remove_events, on_remove)

script.on_event({defines.events.on_tick}, iz_daylight)
