roslaunch gf_indoor_fire_mm test_gf_indoor_and_ugv_nav.launch

rosservice call /Test_GF/gf_indoor_fire_mm/update_water_ext_state "data: 1" 
rosservice call /Test_GF/gf_indoor_fire_mm/update_gf_indoor_fire_detection_state "data: 2"

rosservice call /Test_GF/gf_indoor_fire_mm/set_state "data: 2" 

rosservice call /Test_GF/ugv_nav/set_fire_direction "p1:
  x: 6.0
  y: 7.0
  z: 0.0
p2:
  x: 11.0
  y: 4.0
  z: 0.0" 

rosservice call /Test_GF/ugv_nav/set_fire_location "p:
  x: 9.0
  y: 12.0
  z: 0.0"


rosservice call /Test_GF/gf_indoor_fire_mm/update_gf_indoor_fire_detection_state "data: 4"

rosservice call /Test_GF/gf_indoor_fire_mm/update_water_ext_state "data: 4"