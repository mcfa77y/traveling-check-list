PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
-- drop the table if it already exists
drop table if exists todo_item;
-- create a table for todo items
-- code should be a uuid
create table todo_item (
	code text primary key,
  description text,
  is_completed INTEGER default 0, -- 0 represents false in SQLite
  parent_id integer references todo_item(id) default null
);

-- create some seed values for todo lists
-- The following inserts need to include a 'description' field, assuming 'name' was meant to be 'description'.
insert into todo_item (code, description) values ('BASE_TRAVEL', 'Base Travel');
insert into todo_item (code, description, parent_id) values ('LUFA', 'Lufa', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('WATER_CHANKLAS', 'Water chanklas', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('SANDALS', 'Sandals', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('N_SOCKS', 'N-socks', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('N_UNDIES', 'N-undies', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('N_SHIRTS', 'N-shirts', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('N_2_PANTS', 'N/2 pants', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('SLEEPING_PANTS', 'Sleeping pants', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('SWIM_SHORTS', 'Swim shorts', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('SLEEPING_SHIRT', 'Sleeping shirt', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('SUNGLASSES', 'Sunglasses', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('TOOTHBRUSH', 'Toothbrush', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('DIRTY_CLOTHS_PLASTIC_BAG_DRYER_SHEETS', 'Dirty cloths plastic bag dryer sheets', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('WATER_BOTTLE', 'Water bottle', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('TOILETRIES', 'Toiletries', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('INHALER', 'Inhaler', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('EAR_PLUGS', 'Ear plugs', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('EYE_MASK', 'Eye mask', 'BASE_TRAVEL');


insert into todo_item (code, description, parent_id) values ('HOT_PLACE', 'Hot Place', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('BANDANNA', 'bandanna', 'HOT_PLACE');
insert into todo_item (code, description, parent_id) values ('LIGHT_BUTTON_UP_SHIRTS', 'light button up shirts', 'HOT_PLACE');
insert into todo_item (code, description, parent_id) values ('STRAW_HAT', 'straw hat', 'HOT_PLACE');

insert into todo_item (code, description, parent_id) values ('COLD_PLACE', 'Cold Place', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('SCARF', 'Scarf', 'COLD_PLACE');
insert into todo_item (code, description, parent_id) values ('BEANIE', 'Beanie', 'COLD_PLACE');
insert into todo_item (code, description, parent_id) values ('GLOVES_0', 'Gloves', 'COLD_PLACE');
insert into todo_item (code, description, parent_id) values ('LONG_SLEEVE_SHIRT', 'Long sleeve shirt', 'COLD_PLACE');
insert into todo_item (code, description, parent_id) values ('WOOLEN_SOCKS', 'Woolen socks', 'COLD_PLACE');


insert into todo_item (code, description) values ('CHARGERS', 'Chargers', 'BASE_TRAVEL');
insert into todo_item (code, description, parent_id) values ('IPAD', 'Ipad', 'CHARGERS');
insert into todo_item (code, description, parent_id) values ('COMPUTER', 'Computer', 'CHARGERS');
insert into todo_item (code, description, parent_id) values ('LONG_USB_C', 'long usb c', 'CHARGERS');
insert into todo_item (code, description, parent_id) values ('USB_MICRO', 'usb micro', 'CHARGERS');

insert into todo_item (code, description) values ('CABIN', 'Cabin');
insert into todo_item (code, description, parent_id) values ('SPEAKER', 'Speaker', 'CABIN');
insert into todo_item (code, description, parent_id) values ('GAMES', 'Games', 'CABIN');

insert into todo_item (code, description) values ('INTERNATIONAL', 'International');
insert into todo_item (code, description, parent_id) values ('SUPER_BURRITO', 'Super burrito', 'INTERNATIONAL');
insert into todo_item (code, description, parent_id) values ('SLEEPING_PILLOW', 'Sleeping pillow', 'INTERNATIONAL');
insert into todo_item (code, description, parent_id) values ('GUIDE_BOOK', 'Guide book', 'INTERNATIONAL');
insert into todo_item (code, description, parent_id) values ('PASSPORT', 'Passport', 'INTERNATIONAL');
insert into todo_item (code, description, parent_id) values ('INTERNATIONAL_PLUG', 'International plug', 'INTERNATIONAL');
insert into todo_item (code, description, parent_id) values ('HEADPHONES', 'Noise canceling headphones in ear', 'INTERNATIONAL');
insert into todo_item (code, description, parent_id) values ('MASK', 'Mask', 'INTERNATIONAL');
insert into todo_item (code, description, parent_id) values ('MASK_STRAP_HELPER', 'Mask strap helper', 'INTERNATIONAL');
insert into todo_item (code, description, parent_id) values ('TRAVELING_BACKPACK', 'Traveling backpack', 'INTERNATIONAL');



insert into todo_item (code, description) values ('SNOWBOARDING', 'Snowboarding');
insert into todo_item (code, description, parent_id) values ('OATMEAL_LOTION', 'Oatmeal lotion', 'SNOWBOARDING');
insert into todo_item (code, description, parent_id) values ('KNIT_CAP', 'Knit cap', 'SNOWBOARDING');
insert into todo_item (code, description, parent_id) values ('SNOW_PANTS', 'Snow pants', 'SNOWBOARDING');
insert into todo_item (code, description, parent_id) values ('GLOVES', 'Gloves', 'SNOWBOARDING');
insert into todo_item (code, description, parent_id) values ('SNOW_JACKET', 'Snow jacket', 'SNOWBOARDING');
insert into todo_item (code, description, parent_id) values ('BOOTS', 'Boots', 'SNOWBOARDING');
insert into todo_item (code, description, parent_id) values ('SUNSCREEN', 'Sunscreen', 'SNOWBOARDING');
insert into todo_item (code, description, parent_id) values ('GOGGLES', 'Goggles', 'SNOWBOARDING');
insert into todo_item (code, description, parent_id) values ('HELMET', 'Helmet', 'SNOWBOARDING');

insert into todo_item (code, description) values ('PRETRIP', 'Pretrip');
insert into todo_item (code, description, parent_id) values ('CLEAN_OUT_QUERTY', 'Clean out Querty', 'PRETRIP');
insert into todo_item (code, description, parent_id) values ('SHOWER', 'Shower', 'PRETRIP');
insert into todo_item (code, description, parent_id) values ('THROW_OUT_TRASH', 'Throw out trash', 'PRETRIP');
insert into todo_item (code, description, parent_id) values ('WASH_DISHES', 'Wash dishes', 'PRETRIP');
insert into todo_item (code, description, parent_id) values ('TURN_OFF_HEATER', 'Turn off heater', 'PRETRIP');
insert into todo_item (code, description, parent_id) values ('CLIP_NAILS', 'Clip nails', 'PRETRIP');


insert into todo_item (code, description) values ('PRETRIP_DOWNLOAD', 'Pretrip Download');
insert into todo_item (code, description, parent_id) values ('MUSIC', 'Music', 'PRETRIP_DOWNLOAD');
insert into todo_item (code, description, parent_id) values ('TV', 'TV', 'PRETRIP_DOWNLOAD');
insert into todo_item (code, description, parent_id) values ('MOVIE', 'Movie', 'PRETRIP_DOWNLOAD');


insert into todo_item (code, description) values ('CAMPING', 'Camping');
insert into todo_item (code, description, parent_id) values ('CAMPING_SLEEPING', 'Camping Sleeping', 'CAMPING');
insert into todo_item (code, description, parent_id) values ('TENT', 'Tent', 'CAMPING_SLEEPING');
insert into todo_item (code, description, parent_id) values ('AIR_MATTRESS', 'Air mattress', 'CAMPING_SLEEPING');
insert into todo_item (code, description, parent_id) values ('AIR_MATTRESS_PUMP', 'Air mattress pump', 'CAMPING_SLEEPING');
insert into todo_item (code, description, parent_id) values ('SLEEPING_BAG', 'Sleeping bag', 'CAMPING_SLEEPING');
insert into todo_item (code, description, parent_id) values ('SLEEPING_PILLOW_0', 'Sleeping pillow', 'CAMPING_SLEEPING');

insert into todo_item (code, description, parent_id) values ('CAMPING_KITCHEN', 'Camping Kitchen', 'CAMPING');
insert into todo_item (code, description, parent_id) values ('PLATES', 'Plates', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('DURALOG', 'Duralog', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('ALUMINUM_FOIL', 'Aluminum foil', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('ZIPLOCK', 'Large and small ziplocks', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('DISH_SOAP', 'Dish soap', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('DISH_BRUSH', 'Dish brush', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('SPONGE', 'Sponge', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('BOWLS', 'Bowls', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('POT', 'Pot', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('PAN', 'Pan', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('CUTLERY', 'Cutlery', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('SERVING_SPOON', 'Big serving spoon', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('SPATULA', 'Spatula', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('BEER_COZY', 'Beer coozy', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('CAMPING_CHAIRS', 'Camping chairs', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('TRASHBAG', 'Trashbags (one for recycling)', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('RED_GRILL', 'Red grill', 'CAMPING_KITCHEN');
insert into todo_item (code, description, parent_id) values ('CAN_OPENER', 'Can opener', 'CAMPING_KITCHEN');


insert into todo_item (code, description, parent_id) values ('CAMPING_CLOTHES', 'Camping Clothes', 'CAMPING');
insert into todo_item (code, description, parent_id) values ('SCARF_CC', 'Scarf', 'CAMPING_CLOTHES');
insert into todo_item (code, description, parent_id) values ('SUN_HAT', 'Sun Hat', 'CAMPING_CLOTHES');
insert into todo_item (code, description, parent_id) values ('JACKET', 'Jacket', 'CAMPING_CLOTHES');
insert into todo_item (code, description, parent_id) values ('KNIT_CAP_CC', 'Knit cap', 'CAMPING_CLOTHES');
insert into todo_item (code, description, parent_id) values ('HIKING_BOOTS', 'Hiking boots', 'CAMPING_CLOTHES');
insert into todo_item (code, description, parent_id) values ('CAMELBACK', 'Camelback', 'CAMPING_CLOTHES');


insert into todo_item (code, description, parent_id) values ('CAMPING_MISC', 'Camping Misc', 'CAMPING');
insert into todo_item (code, description, parent_id) values ('BABY_WIPES', 'Baby wipes', 'CAMPING_MISC');
insert into todo_item (code, description, parent_id) values ('EL_WIRE', 'El wire', 'CAMPING_MISC');
insert into todo_item (code, description, parent_id) values ('MULTI_TOOL', 'Multi-tool', 'CAMPING_MISC');
insert into todo_item (code, description, parent_id) values ('HEADLAMPS', 'Headlamps', 'CAMPING_MISC');
insert into todo_item (code, description, parent_id) values ('SPEAKER_CM', 'Speaker', 'CAMPING_MISC');
insert into todo_item (code, description, parent_id) values ('SUNBLOCK', 'Sunblock', 'CAMPING_MISC');
insert into todo_item (code, description, parent_id) values ('WEED', 'Weed', 'CAMPING_MISC');

insert into todo_item (code, description) values ('BBQ', 'BBQ');
insert into todo_item (code, description, parent_id) values ('DURALOG_BBQ', 'Duralog', 'BBQ');
insert into todo_item (code, description, parent_id) values ('TRASHBAG_BBQ', 'Trash bags (one for recycling)', 'BBQ');
insert into todo_item (code, description, parent_id) values ('SUNSCREEN_BBQ', 'Sunscreen', 'BBQ');
insert into todo_item (code, description, parent_id) values ('HAT', 'Hat', 'BBQ');
insert into todo_item (code, description, parent_id) values ('CUTTING_BOARD', 'Cutting board', 'BBQ');
insert into todo_item (code, description, parent_id) values ('KNIFE', 'Knife', 'BBQ');
insert into todo_item (code, description, parent_id) values ('SPEAKER_BBQ', 'Speaker', 'BBQ');


insert into todo_item (code, description) values ('SURFING', 'Surfing');
insert into todo_item (code, description, parent_id) values ('SURFBOARD', 'Surfboard', 'SURFING');

insert into todo_item (code, description) values ('ROAD_TRIP', 'Road Trip');
insert into todo_item (code, description, parent_id, is_completed) values ('AC_CONVERTER', 'Ac converter', 'ROAD_TRIP', true);
insert into todo_item (code, description, parent_id) values ('CAR_CHARGING_CABLE', 'Car charging cable >5hrs away', 'ROAD_TRIP');

COMMIT;