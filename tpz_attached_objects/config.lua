Config = {} 

Config.Debug = true

---------------------------------------------------------------
--[[ General Settings ]]--
---------------------------------------------------------------

Config.DeleteAllAttached = { 
    Command = 'deleteallattachedprops', 
    Description = 'Execute this command to remove all attached props from your player ped.'
}

---------------------------------------------------------------
--[[ Item Sets ]]--
---------------------------------------------------------------

Config.AttachedItemSets = {

    ["Headband1"] = { -- ITEM NAME
        {EntityObject = "p_hat_band_001",             Attachment = "HairScale_B", x= 0,y=  -0.09999999999999,  z= 0,                 xRot=78.0,              yRot=0,     zRot=-2.0},    
        {EntityObject = "p_cs_eaglefeather02x",       Attachment = "HairScale_B", x= 0.07,y= 0.08,             z= -0.03,             xRot=63.49999999999995, yRot=-18.9, zRot=3.59999999999998}, 
        {EntityObject = "p_cs_eaglefeather02x",       Attachment = "HairScale_B", x=0.06,y= 0.08,              z= -0.03,             xRot=63.49999999999995, yRot=-0.9,  zRot=-32.39999999999999}, 
        {EntityObject = "s_heronfeathertrinket",      Attachment = "HairScale_B", x=0.09999999999999,y= -0.05, z= -0.10999999999999, xRot=-13.5,             yRot=7.2,   zRot=64.79999999999993}, 
    },

    ["Headband2"] = { -- ITEM NAME
        {EntityObject = "p_hat_band_012",             Attachment = "HairScale_B", x=0,y= -0.09999999999999,z= 0, xRot=85.0, yRot=0, zRot=0},    
        {EntityObject = "s_cs_californiafeather_01x", Attachment = "HairScale_B", x=-0.03,y= 0.09999999999999,z= -0.02, xRot=-136.0, yRot=172.0, zRot=-196.0},   
        {EntityObject = "s_heronfeathertrinket",      Attachment = "HairScale_B", x=0.08,y= -0.02999999999999,z= -0.09999999999999, xRot=-0, yRot=7.0, zRot=-91.0},   
        {EntityObject = "s_heronfeathertrinket",      Attachment = "HairScale_B", x=-0.07,y= -0.02999999999999,z= -0.09999999999999, xRot=-0, yRot=7.0, zRot=-57.0},
    },

    ["Headband3"] = { -- ITEM NAME
        {EntityObject = "p_hat_band_011",             Attachment = "HairScale_B", x=0,y= -0.09999999999999,z= 0, xRot=85.0, yRot=0, zRot=0},    
        {EntityObject = "s_heronfeathertrinket",      Attachment = "HairScale_B", x=0.08,y= -0.04,z= -0.10999999999999, xRot=0, yRot=4.0, zRot=75.0}, 
        {EntityObject = "s_cs_roseatefeather_04x",    Attachment = "HairScale_B", x=-0.03,y= 0.09999999999999,z= -0.04, xRot=-66.0, yRot=22.0, zRot=0}, 
        {EntityObject = "s_cs_roseatefeather_04x",    Attachment = "HairScale_B", x=0,y= 0.09999999999999,z= -0.04, xRot=-66.0, yRot=0, zRot=0}, 
        {EntityObject = "s_cs_roseatefeather_04x",    Attachment = "HairScale_B", x=0.02,y= 0.09999999999999,z= -0.04, xRot=-57.0, yRot=-3.0, zRot=-25.0},
        {EntityObject = "s_turtleshelltrinket01x",    Attachment = "HairScale_B", x=0,y= 0.09999999999999,z= -0.01999999999999, xRot=-26.0, yRot=0, zRot=179.0},  
    },

    ["Headband4"] = { -- ITEM NAME
        {EntityObject = "p_hat_band_001",             Attachment = "HairScale_B", x=0,y= -0.09999999999999,z= 0.00999999999999, xRot=72.0, yRot=0, zRot=0},   
        {EntityObject = "p_hat_band_001",             Attachment = "HairScale_B", x=0,y= -0.09,z= 0.03, xRot=69.0, yRot=0, zRot=0},  
        {EntityObject = "p_hat_band_001",             Attachment = "HairScale_B", x=0,y= -0.07,z= 0.06, xRot=51.0, yRot=0, zRot=0},    
        {EntityObject = "p_cs_eaglefeather04x",       Attachment = "HairScale_B", x=0, y=-0.04,z= 0.05, xRot=42.0, yRot=0, zRot=0},  
        {EntityObject = "p_cs_eaglefeather04x",       Attachment = "HairScale_B", x=0.04,y= -0.04,z= 0.04, xRot=43.0, yRot=0, zRot=3.0},
        {EntityObject = "p_cs_eaglefeather04x",       Attachment = "HairScale_B", x=-0.05,y= -0.04,z= 0, xRot=55.0, yRot=0, zRot=0},
        {EntityObject = "p_cs_owlfeathertrinket",     Attachment = "HairScale_B", x=-0.05,y= -0.06,z= 0.02, xRot=-9.0, yRot=-8.0, zRot=-54.0},
    },

    ["Headband5"] = { -- ITEM NAME
        {EntityObject = "p_hat_band_002",             Attachment = "HairScale_B", x=0,y= -0.09999999999999,z= -0.01, xRot=83.59999999999995, yRot=0, zRot=1.1},   
        {EntityObject = "s_duckfeather01x",           Attachment = "HairScale_B", x=0.08,y= -0.05,z= -0.02, xRot=0, yRot=0, zRot=52.80000000000004}, 
        {EntityObject = "s_cranefeathertrinket01x",   Attachment = "HairScale_B", x=0,y= 0.12999999999999,z= 0.03, xRot=-26.40000000000001, yRot=4.4, zRot=-3.3},  
    },

    ["Headband6"] = { -- ITEM NAME
        {EntityObject = "p_indiandream03x",           Attachment = "HairScale_B", x = -0.009, y= 0.05, z= 0.062, xRot = -32.0, yRot = 7.0, zRot = 155.0},  
        {EntityObject = "p_indianfan01x",             Attachment = "HairScale_B", x = 0.00999999999999, y= -0.055, z= -0.15, xRot = 46.0, yRot = -4.0, zRot = -178.0},  
        {EntityObject = "s_cranefeathertrinket01x",   Attachment = "HairScale_B", x = 0.038, y= 0.09499999999999, z= -0.033, xRot = -140.0, yRot = 2.0, zRot = -36.0},  
        {EntityObject = "s_cranefeathertrinket01x",   Attachment = "HairScale_B", x = 0.05, y= 0.09399999999999, z= 0, xRot = -110.0, yRot = -345.0, zRot = -33.0}, 
        {EntityObject = "s_cranefeathertrinket01x",   Attachment = "HairScale_B", x = -0.02699999999999, y= 0.09299999999999, z= -0.028, xRot = -144.0, yRot = 9.0, zRot = 16.0}, 
        {EntityObject = "s_cranefeathertrinket01x",   Attachment = "HairScale_B", x = -0.03199999999999, y= 0.09499999999999, z= 0.008, xRot = -113.0, yRot = -348.0, zRot = 18.0}, 
    },
    
    ["natives_chief_hat"] = { -- ITEM NAME
        {EntityObject = "mlohub_native_headdress01",  Attachment = "HairScale_B", x = -0.001, y= -0.01899999999998, z= -0.07799999999999, xRot = 8.59999999999997, yRot = -1.0, zRot = 2.10000000000001},
    },

    ["natives_backshield"] = { -- ITEM NAME
        {EntityObject = "p_spookynative05x",          Attachment = "CP_Back",     x = -1.16, y= -0.03, z= -0.33999999999999, xRot = -67.0, yRot = 0, zRot = -83.0},
    },

    ['natives_arrow_pouch_bag'] = { -- ITEM NAME
        {EntityObject = "p_arrowbundle01x",           Attachment = "CP_Back",     x = -0.12999999999999, y= -0.04, z= 0.04, xRot = -7.0, yRot = -375.0, zRot = 79.0},
    },

    ["BeltLantern"] = { -- ITEM NAME
        {EntityObject = "s_interact_lantern02x",      Attachment = "CP_Back",     x = -0.48, y= 0,z= 0.13, xRot= -3.0, yRot= 108.0, zRot= -12.0},
    },

    ["miner_hat"] = { -- ITEM NAME
        {EntityObject = "s_hat_miner01x",             Attachment = "HairScale_B", x = 0, y= -0.03, z= 0.01, xRot= -9.0, yRot= 4.0, zRot= 0},
        {EntityObject = "s_movieprojection01x",       Attachment = "HairScale_B", x = 0.00999999999999, y= -0.070, z= 0.09, xRot= -80.0, yRot= 16.0, zRot= 4.0},
    },

}