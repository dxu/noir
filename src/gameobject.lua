local gameobject = {
  x=x,
  y=y,
  dx=0,
  dy=0,
  w=8,
  h=8,
  max_dx=1,
  max_dy=2,
  jump_speed=-1.75,--jump veloclity
  acc=0.05,--acceleration
  dcc=0.8,--decceleration
  air_dcc=1,--air decceleration
  grav=0.15,
}

return gameobject
