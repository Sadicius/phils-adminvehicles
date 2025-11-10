Config = {}

Config.AdminGroups = {
    'god',
    'admin',
    'mod'
}

Config.Horses = {
    -- American Paint
    { label = 'American Paint - Greyovero', model = 'A_C_Horse_AmericanPaint_Greyovero' },
    { label = 'American Paint - Overo', model = 'A_C_Horse_AmericanPaint_Overo' },
    { label = 'American Paint - Splashedwhite', model = 'A_C_Horse_AmericanPaint_SplashedWhite' },
    { label = 'American Paint - Tobiano', model = 'A_C_Horse_AmericanPaint_Tobiano' },
    
    -- American Standardbred
    { label = 'American Standardbred - Black', model = 'A_C_Horse_AmericanStandardbred_Black' },
    { label = 'American Standardbred - Buckskin', model = 'A_C_Horse_AmericanStandardbred_Buckskin' },
    { label = 'American Standardbred - Lightbuckskin', model = 'A_C_Horse_AmericanStandardbred_Lightbuckskin' },
    { label = 'American Standardbred - Palominodapple', model = 'A_C_Horse_AmericanStandardbred_PalominoDapple' },
    { label = 'American Standardbred - Silvertailbuckskin', model = 'A_C_Horse_AmericanStandardbred_SilverTailBuckskin' },
    
    -- Andalusian
    { label = 'Andalusian - Dark Bay', model = 'A_C_Horse_Andalusian_DarkBay' },
    { label = 'Andalusian - Perlino', model = 'A_C_Horse_Andalusian_Perlino' },
    { label = 'Andalusian - Rose Gray', model = 'A_C_Horse_Andalusian_RoseGray' },
    
    -- Appaloosa
    { label = 'Appaloosa - Blacksnowflake', model = 'A_C_Horse_Appaloosa_Blacksnowflake' },
    { label = 'Appaloosa - Blanket', model = 'A_C_Horse_Appaloosa_Blanket' },
    { label = 'Appaloosa - Brownleopard', model = 'A_C_Horse_Appaloosa_BrownLeopard' },
    { label = 'Appaloosa - Leopard', model = 'A_C_Horse_Appaloosa_Leopard' },
    { label = 'Appaloosa - Leopardblanket', model = 'A_C_Horse_Appaloosa_LeopardBlanket' },
    
    -- Arabian
    { label = 'Arabian - Black', model = 'A_C_Horse_Arabian_Black' },
    { label = 'Arabian - Grey', model = 'A_C_Horse_Arabian_Grey' },
    { label = 'Arabian - Redchestnut', model = 'A_C_Horse_Arabian_RedChestnut' },
    { label = 'Arabian - Redchestnut PC', model = 'A_C_Horse_Arabian_RedChestnut_PC' },
    { label = 'Arabian - Rosegreybay', model = 'A_C_Horse_Arabian_RoseGreyBay' },
    { label = 'Arabian - Warpedbrindle', model = 'A_C_Horse_Arabian_WarpedBrindle_PC' },
    { label = 'Arabian - White', model = 'A_C_Horse_Arabian_White' },
    
    -- Ardennes
    { label = 'Ardennes - Bay Roan', model = 'A_C_Horse_Ardennes_BayRoan' },
    { label = 'Ardennes - Irongreyroan', model = 'A_C_Horse_Ardennes_IronGreyRoan' },
    { label = 'Ardennes - Strawberryroan', model = 'A_C_Horse_Ardennes_StrawberryRoan' },
    
    -- Belgian
    { label = 'Belgian - Blondchestnut', model = 'A_C_Horse_Belgian_Blondchestnut' },
    { label = 'Belgian - Mealychestnut', model = 'A_C_Horse_Belgian_MealyChestnut' },
    
    -- Breton
    { label = 'Breton - Grullodun', model = 'A_C_Horse_Breton_GrulloDun' },
    { label = 'Breton - Mealydapplebay', model = 'A_C_Horse_Breton_MealyDappleBay' },
    { label = 'Breton - Redroan', model = 'A_C_Horse_Breton_RedRoan' },
    { label = 'Breton - Sealbrown', model = 'A_C_Horse_Breton_SealBrown' },
    { label = 'Breton - Sorrel', model = 'A_C_Horse_Breton_Sorrel' },
    { label = 'Breton - Steelgrey', model = 'A_C_Horse_Breton_SteelGrey' },
    
    -- Criollo
    { label = 'Criollo - Baybrindle', model = 'A_C_Horse_Criollo_BayBrindle' },
    { label = 'Criollo - Bayframeovero', model = 'A_C_Horse_Criollo_BayFrameOvero' },
    { label = 'Criollo - Blueroanovero', model = 'A_C_Horse_Criollo_BlueRoanOvero' },
    { label = 'Criollo - Dun', model = 'A_C_Horse_Criollo_Dun' },
    { label = 'Criollo - Marblesabino', model = 'A_C_Horse_Criollo_MarbleSabino' },
    { label = 'Criollo - Sorrelovero', model = 'A_C_Horse_Criollo_SorrelOvero' },
    
    -- Dutch Warmblood
    { label = 'Dutch Warmblood - Chocolate Roan', model = 'A_C_Horse_DutchWarmblood_ChocolateRoan' },
    { label = 'Dutch Warmblood - Sootybuckskin', model = 'A_C_Horse_DutchWarmblood_SootyBuckskin' },
    { label = 'Dutch Warmblood - Cremello', model = 'A_C_Horse_DutchWarmblood_Cremello' },
    
    -- Hungarian Halfbred
    { label = 'Hungarian Halfbred - Darkdapplegrey', model = 'A_C_Horse_HungarianHalfbred_Darkdapplegrey' },
    { label = 'Hungarian Halfbred - Flaxenchestnut', model = 'A_C_Horse_HungarianHalfbred_FlaxenChestnut' },
    { label = 'Hungarian Halfbred - Liverchestnut', model = 'A_C_Horse_HungarianHalfbred_LiverChestnut' },
    { label = 'Hungarian Halfbred - Piebaldtobiano', model = 'A_C_Horse_HungarianHalfbred_PiebaldTobiano' },
    
    -- Kentucky Saddler
    { label = 'Kentucky Saddler - Black', model = 'A_C_Horse_KentuckySaddle_Black' },
    { label = 'Kentucky Saddler - Buttermilkbuckskin', model = 'A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC' },
    { label = 'Kentucky Saddler - Chestnutpinto', model = 'A_C_Horse_KentuckySaddle_ChestnutPinto' },
    { label = 'Kentucky Saddler - Grey', model = 'A_C_Horse_KentuckySaddle_Grey' },
    { label = 'Kentucky Saddler - Silverbay', model = 'A_C_Horse_KentuckySaddle_SilverBay' },
    
    -- Kladruber
    { label = 'Kladruber - Cremello', model = 'A_C_Horse_Kladruber_Cremello' },
    { label = 'Kladruber - Dapplerosegrey', model = 'A_C_Horse_Kladruber_DappleRoseGrey' },
    { label = 'Kladruber - Grey', model = 'A_C_Horse_Kladruber_Grey' },
    { label = 'Kladruber - Silver', model = 'A_C_Horse_Kladruber_Silver' },
    { label = 'Kladruber - White', model = 'A_C_Horse_Kladruber_White' },
    
    -- Missouri Fox Trotter
    { label = 'Missouri Fox Trotter - Amber Champagne', model = 'A_C_Horse_MissouriFoxTrotter_AmberChampagne' },
    { label = 'Missouri Fox Trotter - Blacktovero', model = 'A_C_Horse_MissouriFoxTrotter_BlackTovero' },
    { label = 'Missouri Fox Trotter - Blueroan', model = 'A_C_Horse_MissouriFoxTrotter_BlueRoan' },
    { label = 'Missouri Fox Trotter - Buckskinbrindle', model = 'A_C_Horse_MissouriFoxTrotter_BuckskinBrindle' },
    { label = 'Missouri Fox Trotter - Dapplegrey', model = 'A_C_Horse_MissouriFoxTrotter_DappleGrey' },
    { label = 'Missouri Fox Trotter - Sablechampagne', model = 'A_C_Horse_MissouriFoxTrotter_SableChampagne' },
    { label = 'Missouri Fox Trotter - Silverdapplepinto', model = 'A_C_Horse_MissouriFoxTrotter_SilverDapplePinto' },
    
    -- Morgan
    { label = 'Morgan - Bay', model = 'A_C_Horse_Morgan_Bay' },
    { label = 'Morgan - Bayroan', model = 'A_C_Horse_Morgan_BayRoan' },
    { label = 'Morgan - Flaxenchestnut', model = 'A_C_Horse_Morgan_FlaxenChestnut' },
    { label = 'Morgan - Liverchestnut', model = 'A_C_Horse_Morgan_LiverChestnut_PC' },
    { label = 'Morgan - Palomino', model = 'A_C_Horse_Morgan_Palomino' },
    
    -- Mustang
    { label = 'Mustang - Blackovero', model = 'A_C_Horse_Mustang_BlackOvero' },
    { label = 'Mustang - Buckskin', model = 'A_C_Horse_Mustang_Buckskin' },
    { label = 'Mustang - Chestnuttovero', model = 'A_C_Horse_Mustang_ChestnutTovero' },
    { label = 'Mustang - Goldendun', model = 'A_C_Horse_Mustang_GoldenDun' },
    { label = 'Mustang - Grullodan', model = 'A_C_Horse_Mustang_GrulloDun' },
    { label = 'Mustang - Reddunovero', model = 'A_C_Horse_Mustang_RedDunOvero' },
    { label = 'Mustang - Tigerstripedbay', model = 'A_C_Horse_Mustang_TigerstripedBay' },
    { label = 'Mustang - Wildbay', model = 'A_C_Horse_Mustang_WildBay' },
    
    -- Norfolk Roadster
    { label = 'Norfolk Roadster - Black', model = 'A_C_Horse_NorfolkRoadster_Black' },
    { label = 'Norfolk Roadster - Dappledbuckskin', model = 'A_C_Horse_NorfolkRoadster_DappleBuckskin' },
    { label = 'Norfolk Roadster - Piebaldroan', model = 'A_C_Horse_NorfolkRoadster_PiebaldRoan' },
    { label = 'Norfolk Roadster - Rosegrey', model = 'A_C_Horse_NorfolkRoadster_RoseGrey' },
    { label = 'Norfolk Roadster - Speckledgrey', model = 'A_C_Horse_NorfolkRoadster_SpeckledGrey' },
    { label = 'Norfolk Roadster - Spottedtricolor', model = 'A_C_Horse_NorfolkRoadster_SpottedTricolor' },
    
    -- Nokota
    { label = 'Nokota - Blueroan', model = 'A_C_Horse_Nokota_BlueRoan' },
    { label = 'Nokota - Reversedappleroan', model = 'A_C_Horse_Nokota_ReverseDappleRoan' },
    { label = 'Nokota - Whiteroan', model = 'A_C_Horse_Nokota_WhiteRoan' },
    
    -- Shire
    { label = 'Shire - Dark Bay', model = 'A_C_Horse_Shire_DarkBay' },
    { label = 'Shire - Lightgrey', model = 'A_C_Horse_Shire_LightGrey' },
    { label = 'Shire - Ravenblack', model = 'A_C_Horse_Shire_RavenBlack' },
    
    -- Suffolk Punch
    { label = 'Suffolk Punch - Redchestnut', model = 'A_C_Horse_SuffolkPunch_RedChestnut' },
    { label = 'Suffolk Punch - Sorrel', model = 'A_C_Horse_SuffolkPunch_Sorrel' },
    
    -- Tennessee Walker
    { label = 'Tennessee Walker - Blackrabicano', model = 'A_C_Horse_TennesseeWalker_BlackRabicano' },
    { label = 'Tennessee Walker - Chestnut', model = 'A_C_Horse_TennesseeWalker_Chestnut' },
    { label = 'Tennessee Walker - Dapplebay', model = 'A_C_Horse_TennesseeWalker_DappleBay' },
    { label = 'Tennessee Walker - Flaxenroan', model = 'A_C_Horse_TennesseeWalker_FlaxenRoan' },
    { label = 'Tennessee Walker - Goldpalomino', model = 'A_C_Horse_TennesseeWalker_GoldPalomino_PC' },
    { label = 'Tennessee Walker - Mahoganybay', model = 'A_C_Horse_TennesseeWalker_MahoganyBay' },
    { label = 'Tennessee Walker - Redroan', model = 'A_C_Horse_TennesseeWalker_RedRoan' },
    
    -- Thoroughbred
    { label = 'Thoroughbred - Blackchestnut', model = 'A_C_Horse_Thoroughbred_BlackChestnut' },
    { label = 'Thoroughbred - Bloodbay', model = 'A_C_Horse_Thoroughbred_BloodBay' },
    { label = 'Thoroughbred - Brindle', model = 'A_C_Horse_Thoroughbred_Brindle' },
    { label = 'Thoroughbred - Dapplegrey', model = 'A_C_Horse_Thoroughbred_DappleGrey' },
    { label = 'Thoroughbred - Reversedappleblack', model = 'A_C_Horse_Thoroughbred_ReverseDappleBlack' },
    
    -- Turkoman
    { label = 'Turkoman - Dark Bay', model = 'A_C_Horse_Turkoman_DarkBay' },
    { label = 'Turkoman - Gold', model = 'A_C_Horse_Turkoman_Gold' },
    { label = 'Turkoman - Perlino', model = 'A_C_Horse_Turkoman_Perlino' },
    { label = 'Turkoman - Silver', model = 'A_C_Horse_Turkoman_Silver' },
    
    -- Special Horses
    { label = 'Donkey', model = 'A_C_Donkey_01' },
    { label = 'Mule', model = 'A_C_Mule_01' },
    { label = 'John\'s Horse (Winter)', model = 'A_C_Horse_John_EndlessSummer' },
    { label = 'Buell', model = 'A_C_Horse_Buell_WarVets' },
    { label = 'Gang Horse (Bill)', model = 'A_C_Horse_Gang_Bill' },
    { label = 'Gang Horse (Charles)', model = 'A_C_Horse_Gang_Charles' },
    { label = 'Gang Horse (Charles Alt)', model = 'A_C_Horse_Gang_Charles_Col' },
    { label = 'Gang Horse (Dutch)', model = 'A_C_Horse_Gang_Dutch' },
    { label = 'Gang Horse (Hosea)', model = 'A_C_Horse_Gang_Hosea' },
    { label = 'Gang Horse (Javier)', model = 'A_C_Horse_Gang_Javier' },
    { label = 'Gang Horse (John)', model = 'A_C_Horse_Gang_John' },
    { label = 'Gang Horse (Karen)', model = 'A_C_Horse_Gang_Karen' },
    { label = 'Gang Horse (Lenny)', model = 'A_C_Horse_Gang_Lenny' },
    { label = 'Gang Horse (Micah)', model = 'A_C_Horse_Gang_Micah' },
    { label = 'Gang Horse (Sadie)', model = 'A_C_Horse_Gang_Sadie' },
    { label = 'Gang Horse (Sadie Alt)', model = 'A_C_Horse_Gang_Sadie_EndlessSummer' },
    { label = 'Gang Horse (Sean)', model = 'A_C_Horse_Gang_Sean' },
    { label = 'Gang Horse (Trelawny)', model = 'A_C_Horse_Gang_Trelawny' },
    { label = 'Gang Horse (Uncle)', model = 'A_C_Horse_Gang_Uncle' },
    { label = 'Gang Horse (Uncle Alt)', model = 'A_C_Horse_Gang_Uncle_EndlessSummer' },
}

Config.Wagons = {
    
    
    -- Army Wagons
    { label = 'Army Supply Wagon', model = 'armysupplywagon' },
    
    -- Buggies
    { label = 'Buggy 01', model = 'buggy01' },
    { label = 'Buggy 02', model = 'buggy02' },
    { label = 'Buggy 03', model = 'buggy03' },
    { label = 'Buggy 04', model = 'buggy04' },
    { label = 'Buggy 05', model = 'buggy05' },
    { label = 'Buggy 06', model = 'buggy06' },
    
    -- Carts
    { label = 'Cart 01', model = 'cart01' },
    { label = 'Cart 02', model = 'cart02' },
    { label = 'Cart 03', model = 'cart03' },
    { label = 'Cart 04', model = 'cart04' },
    { label = 'Cart 05', model = 'cart05' },
    { label = 'Cart 06', model = 'cart06' },
    { label = 'Cart 07', model = 'cart07' },
    { label = 'Cart 08', model = 'cart08' },
    
    -- Coaches
    { label = 'Coach 2', model = 'coach2' },
    { label = 'Coach 3', model = 'coach3' },
    { label = 'Coach 4', model = 'coach4' },
    { label = 'Coach 5', model = 'coach5' },
    { label = 'Coach 6', model = 'coach6' },
    
    -- Coal Wagon
    { label = 'Coal Wagon', model = 'coalwagon' },
    
    -- Covered Wagons
    { label = 'Covered Wagon', model = 'wagonwork01x' },
    
    -- Prison Wagons
    { label = 'Prison Wagon', model = 'wagonPrison01x' },
    
    -- Stagecoaches
    { label = 'Stagecoach 001x', model = 'stagecoach001x' },
    { label = 'Stagecoach 002x', model = 'stagecoach002x' },
    { label = 'Stagecoach 003x', model = 'stagecoach003x' },
    { label = 'Stagecoach 004x', model = 'stagecoach004x' },
    { label = 'Stagecoach 005x', model = 'stagecoach005x' },
    { label = 'Stagecoach 006x', model = 'stagecoach006x' },
    
    
    -- Wagons
    { label = 'Wagon 01x', model = 'wagon01x' },
    { label = 'Wagon 02x', model = 'wagon02x' },
    { label = 'Wagon 03x', model = 'wagon03x' },
    { label = 'Wagon 04x', model = 'wagon04x' },
    { label = 'Wagon 05x', model = 'wagon05x' },
    { label = 'Wagon 06x', model = 'wagon06x' },
    
    -- Circus Wagons
    { label = 'Circus Wagon 01', model = 'wagonCircus01x' },
    { label = 'Circus Wagon 02', model = 'wagonCircus02x' },
    
    -- Doc Wagon
    { label = 'Doc Wagon 01', model = 'wagondoc01x' },
    
    
    
    -- Oil Wagon
    { label = 'Oil Wagon 01', model = 'oilWagon01x' },
    { label = 'Oil Wagon 02', model = 'oilWagon02x' },
    
    -- Turfster
    { label = 'Traveller', model = 'wagontraveller01x' },
    
    -- Work Wagons
    { label = 'Work Wagon 01', model = 'wagonwork01x' },
    
    -- Utilitarian Wagons
    { label = 'Utilitarian Wagon', model = 'utilliwag' },
    
    
    -- Chuck Wagon
    { label = 'Chuck Wagon', model = 'chuckwagon000x' },
    { label = 'Chuck Wagon 02', model = 'chuckwagon002x' },
    
    -- War Wagons
    { label = 'War Wagon 01', model = 'warwagon2' },
   
    
    -- Trader Wagons (Online)
    { label = 'Hunting Wagon', model = 'huntercart01' },
    { label = 'Bounty Wagon', model = 'bountyWagon01x' },
}