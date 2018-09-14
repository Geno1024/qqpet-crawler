. cookie.sh

wget --recursive --level=inf --page-requisites --convert-links --adjust-extension --span-hosts act.pet.qq.com/20120322task/index.html
wget --recursive --level=inf --page-requisites --convert-links --adjust-extension --span-hosts act.pet.qq.com/newsub/babyinfo.html
wget --recursive --level=inf --page-requisites --convert-links --adjust-extension --span-hosts web.pet.qq.com/web/market/frame.htm
wget --recursive --level=inf --page-requisites --convert-links --adjust-extension --span-hosts web.pet.qq.com/petquan/index.html
wget --recursive --level=inf --page-requisites --convert-links --adjust-extension --span-hosts http://resource.pet.qq.com/WebSoc/bin-release/index.html
for i in yb qd qb qb_2 qd_2; do wget --recursive --level=inf --page-requisites --convert-links --adjust-extension --span-hosts --exclude-domains=pay.qq.com http://act.pet.qq.com/web/market/fail_$i.htm; done
wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID"  --recursive --level=inf --page-requisites --convert-links --adjust-extension --span-hosts http://act.pet.qq.com/magic_kit/magic_help.htm
for i in `seq 0 5`; do wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID"  --recursive --level=inf --page-requisites --convert-links --adjust-extension --span-hosts "http://act.pet.qq.com/cgi-bin/magic_feed?cmd=$i&type=1&pageno=1"; done
wget --recursive --level=inf --page-requisites --convert-links --adjust-extension --span-hosts --domains=pet.qq.com http://pig.pet.qq.com/index.shtml

mkdir pet.qq.com; cd pet.qq.com

    mkdir resource; cd resource
    
        mkdir flash; cd flash
            
            wget "http://pet.qq.com/resource/flash/resize_timer.swf"
        
        cd .. # pet.qq.com/resource/flash/
    
        mkdir js; cd js
            
            wget "http://pet.qq.com/resource/js/jquery.js"
            wget "http://pet.qq.com/resource/js/jquery.base_v4.js"
            wget "http://pet.qq.com/resource/js/pet_v3.js"
        
        cd .. # pet.qq.com/resource/js/
        
    cd .. # pet.qq.com/resource/

    mkdir static; cd static

        wget "http://pet.qq.com/static/mapnew_conf.json"
        wget "http://pet.qq.com/static/pet_act_conf.json"
        wget "http://pet.qq.com/static/pet_task_conf.json"
        wget "http://pet.qq.com/static/topiconlist_conf.json"
    
    cd .. # pet.qq.com/static/
    
cd .. # pet.qq.com/

mkdir act.pet.qq.com; cd act.pet.qq.com
    
    mkdir cgi-bin; cd cgi-bin
    
        wget "http://act.pet.qq.com/cgi-bin/child?cmd=query&callback=jQuery190048077527848726653_1536814206857&_=1536814207068"
    
    cd .. # act.pet.qq.com/cgi-bin/

cd .. # act.pet.qq.com/

mkdir img.pet.qq.com; cd img.pet.qq.com

    wget "http://img.pet.qq.com/WorldMapHotInfo.xml"

    mkdir 2009; cd 2009
    
        mkdir 2011; cd 2011
        
            mkdir other; cd other
            
                wget "http://img.pet.qq.com/2009/2011/other/pink_diamond.gif"
            
            cd .. # img.pet.qq.com/2009/2011/other/
        
        cd .. # img.pet.qq.com/2009/2011/
    
    cd .. # img.pet.qq.com/2009/

    mkdir 2012; cd 2012
    
        mkdir 960; cd 960
            
            mkdir images; cd images
                
                wget "http://img.pet.qq.com/2012/960/images/main.jpg"
            
            cd .. # img.pet.qq.com/2012/960/images/
        
        cd .. # img.pet.qq.com/2012/960/
        
        mkdir market; cd market
        
            wget "http://img.pet.qq.com/2012/market/avatarpreview_20120229.swf"
            
        cd .. # img.pet.qq.com/2012/market/
    
    cd .. # img.pet.qq.com/2012/

    mkdir 2013; cd 2013
    
        mkdir babyinfo; cd babyinfo
        
            wget "http://img.pet.qq.com/2013/babyinfo/baby_box2.gif"
        
        cd .. # img.pet.qq.com/2013/babyinfo/
    
    cd .. # img.pet.qq.com/2013/
    
    mkdir avatar; cd avatar
    
        wget "http://img.pet.qq.com/avatar/CPetSprite.swf"
        wget "http://img.pet.qq.com/avatar/10-GG.png"
        wget "http://img.pet.qq.com/avatar/10-MM.png"
        
        for major in `seq 1 9`
        do
            mkdir $major; cd $major
            
                for minor in `seq 1 1000`; do echo $minor".png"; echo $minor"_show.png"; done > minor.txt
                
                wget -B "http://img.pet.qq.com/avatar/"$major"/" -i minor.txt
                rm minor.txt
                
            cd .. # img.pet.qq.com/avatar/$major/
        done
    
    cd .. # img.pet.qq.com/avatar/
    
    mkdir avatar_back; cd avatar_back
    
        for i in `seq 0 7`
        do 
            wget "http://img.pet.qq.com/avatar_back/801"$i".png"
        done
    
    cd .. # img.pet.qq.com/avatar_back/
    
    mkdir dj; cd dj
    
        for i in `seq 1001 1099`
        do
            wget "http://img.pet.qq.com/dj/1000$i.png"
            wget "http://img.pet.qq.com/dj/1000"$i"_s.gif"
        done
    
    cd .. # img.pet.qq.com/dj/
    
    mkdir images; cd images
    
        wget "http://img.pet.qq.com/images/default.gif"
    
    cd .. # img.pet.qq.com/images/
    
    mkdir pack; cd pack
    
        for i in {00..99}
        do
            wget "http://img.pet.qq.com/pack/$i.gif"
        done
    
    cd .. # img.pet.qq.com/pack/
    
    mkdir vip; cd vip
    
        wget "http://img.pet.qq.com/vip/vip0.png"
        wget "http://img.pet.qq.com/vip/vip_nn.png"
    
    cd .. # img.pet.qq.com/vip/
    
    mkdir wp; cd wp
    
        for i in 10011 10021 10031 10012 10013 10211
        do 
            for j in {001..500}
            do
                wget "http://img.pet.qq.com/wp/$i$j.gif"
            done
        done
    
        for i in 10001 10002 10019 10201 10202 10301 10302
        do 
            for j in {0031..0500}
            do
                wget "http://img.pet.qq.com/wp/$i$j.gif"
            done
#            j=31
 #           while true
  #          do
   #             printf -v k "%04d" $j
    #            wget "http://img.pet.qq.com/wp/$i$k.gif"
     #           if [[ $? -ne 0 ]]
      #          then
       #             break
        #        fi
         #       j=$((j+1))
          #  done
        done
    
        wget http://img.pet.qq.com/wp/102010078.gif
    
    cd .. # img.pet.qq.com/wp/

cd .. # img.pet.qq.com/

mkdir resource.pet.qq.com; cd resource.pet.qq.com

    mkdir webhome; cd webhome
    
        mkdir bin-release; cd bin-release
        
            wget "http://resource.pet.qq.com/webhome/bin-release/webhome_shop_20130821_150000.swf"
        
            mkdir data; cd data
            
                mkdir pet; cd pet
                
                    for i in `seq 0 8`
                    do
                        mkdir 0$i; cd 0$i
                        
                            for j in `seq 0 9`
                            do
                                mkdir $j; cd $j
                                
                                    for k in 02 03 12 13 22 23
                                    do
                                    
                                        wget "http://resource.pet.qq.com/webhome/bin-release/data/pet/0$i/$j/1$k.swf"
                                    
                                    done
                                
                                cd .. # resource.pet.qq.com/webhome/bin-release/data/pet/0$i/$j
                            done
                            
                        cd .. # resource.pet.qq.com/webhome/bin-release/data/pet/0$i
                    done
                
                cd .. # resource.pet.qq.com/webhome/bin-release/data/pet/
            
            cd .. # resource.pet.qq.com/webhome/bin-release/data/
        
        cd .. # resource.pet.qq.com/webhome/bin-release/
    
    cd .. # resource.pet.qq.com/webhome/

    mkdir WebSoc; cd WebSoc

        mkdir bin-release; cd bin-release
        
            wget "http://resource.pet.qq.com/WebSoc/bin-release/lib_fge_all_1210301615.lib"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/lib_include_1706281608.lib"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/main.swf"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/plugin1808201648.xml"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/plugin_avatar_20160531.swf"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/plugin_navigation_20121030_161535.swf"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/plugin_pet_1607051647.swf"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/plugin_protocol_20160531.swf"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/plugin_scene_1706281608.swf"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/plugin_scriptSystem_20130925_194556.swf"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/plugin_tourguide_20151230_144000.swf"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/plugin_ui_1706281608.swf"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/plugin_websoc_20130527_173111.swf"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/plugin_zone_20130121_170000.swf"
            wget "http://resource.pet.qq.com/WebSoc/bin-release/ScreenShower_20121022_121907.swf"
            
            mkdir assets; cd assets
            
                mkdir image; cd image
                
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/assets/image/loading.jpg"
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/assets/image/
                
                mkdir loader; cd loader
                
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/assets/loader/loading_icon.swf"
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/assets/loader/
                
                mkdir logo; cd logo
                
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/assets/logo/logo.png"
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/assets/logo/
                
                mkdir pet; cd pet
            
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/assets/pet/pet_20120301.swf"
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/assets/pet/
                
            cd .. # resource.pet.qq.com/WebSoc/bin-release/assets/
            
            mkdir Data; cd Data
                
                wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/FaceViewInfo.xml"
                wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/petstatusdesc2.xml"
                wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/PetTitleCfg_1807041035.xml"
                wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/SceneVersionConfig_1808201648.xml"
                
                mkdir face; cd face
                
                    for i in `seq 1 25`
                    do
                        wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/face/"$i".png"
                    done
                
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/face/
                
                mkdir LoadPanel; cd LoadPanel
                
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/LoadPanel/loading_1702221520.jpg"
                
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/LoadPanel/
                
                mkdir Music; cd Music
                
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/Music/effect.mp3"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/Music/live01.mp3"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/Music/live02.mp3"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/Music/main01.mp3"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/Music/main02.mp3"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/Music/sea01.mp3"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/Music/sea02.mp3"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/Music/sound3.mp3"
                
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/Music/
                
                mkdir MusicConfig_3; cd MusicConfig_3
                
                    for scene in 6 7 13 15 16 18 20 21 22 23 24 25 26 28 30 31 32 33 34
                    do
                        mkdir $scene; cd $scene
                            wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/MusicConfig_3/"$scene"/MusicConfigV2.xml"
                        cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/MusicConfig_3/$scene
                    done
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/MusicConfig_3/
                
                mkdir MusicConfig_4; cd MusicConfig_4
                
                    for scene in 6 7 13 15 16 18 20 21 22 23 24 25 26 28 30 31 32 33 34
                    do
                        mkdir $scene; cd $scene
                            wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/MusicConfig_4/"$scene"/MusicConfigV2.xml"
                        cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/MusicConfig_4/$scene/
                    done
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/MusicConfig_4/
                
                mkdir pet; cd pet
                
                    for i in `seq 0 2`
                    do
                        for j in `seq 2 3`
                        do
                            wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/pet/1"$i$j".png"
                        done
                    done
                    
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/pet/upgrade.png"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/pet/uplevel.png"
                
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/pet/
                
                mkdir res; cd res

                    mkdir Avatar; cd Avatar
                    
                        for i in `seq 1 9`
                        do
                            mkdir "00"$i; cd "00"$i
            
                            for j in `seq -w 1 1000`; do echo "00"$i"0"$j".png"; done > list.txt
                            wget -B "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/Avatar/00"$i"/" -i list.txt
                            rm list.txt
                            
            #                    for j in `seq -w 1 1000`
             #                   do
              #                      wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/Avatar/00"$i"/00"$i"0"$j".png"
               #                     if [[ $(echo $?) -ne 0 ]]
                #                    then
                 #                       break
                  #                  fi
                   #             done
                                
                            cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/Avatar/00$i/
                            
                        done
                    
                    cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/Avatar/

                    mkdir quiz; cd quiz
                    
                       wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/quiz/giftconf.xml"
                       
                    cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/quiz/
                    
                    mkdir scene; cd scene

                        for map in 6 7 13 15 16 18 20 21 22 23 24 25 26 28 30 31 32 33 34
                        do
                        
                            mkdir $map; cd $map

                                for i in `seq 0 221`
                                do
                                    if [[ $(wget -O /dev/null "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/"$map"/bg_V"$i"/0_0.jpg"; echo $?) -eq 0 ]]
                                    then
                                        wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/"$map"/minimap_V"$i".png"
                                        wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/"$map"/nav_V"$i".png"
                                        wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/"$map"/largemp_V"$i".png"
                                        
                                        mkdir "bg_V"$i; cd "bg_V"$i
                                            for x in `seq 0 11`; do for y in `seq 0 12`; do echo $x"_"$y".jpg"; done; done > mapbase.txt
                                            wget -B "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/"$map"/bg_V"$i"/" -i mapbase.txt
                                            rm mapbase.txt
                                        cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/$map/bg_V$i/
                                    fi
                                done

                            cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/$map/
                            
                        done
                         
                    cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/
                    
                    mkdir title; cd title
                    
                        for i in `seq -w 1 18`
                        do
                            wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/title/200"$i".swf"
                        done
                    
                    cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/title/
                    
                    mkdir topicon; cd topicon
                    
                        for i in `seq 1 12`
                        do
                            wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/topicon/tongyong"$i".png"
                        done
                    
                    cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/topicon/
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/
                
                mkdir SceneConfig; cd SceneConfig
                
                    for scene in 6_1709071123 7_1611231532 13_1611231532 15_1305071600 16_1401151103 18_1305071600 20_1305071600 21_1611231532 22_1808201648 23_120307 24_1611231532 25_1611231532 26_1401151103 28_1611231532 30_1611231532 31_11.12.31 32_11.12.31 33_120808 34_130925
                    do
                        mkdir $scene; cd $scene
        
                            wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/SceneConfig/"$scene"/navi.xml"
                            wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/SceneConfig/"$scene"/Config.xml"
                            wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/SceneConfig/"$scene"/NpcList.xml"
                                                    
                        cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/SceneConfig/22_1808201648/
                    done
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/SceneConfig/
                
                mkdir task; cd task
                
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/task/task.xml"
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/task/
                
                mkdir title; cd title
                
                    for i in `seq 1 5`
                    do
                        wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/title/satrs_"$i".gif"
                    done

                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/title/
                
                mkdir ui; cd ui
                
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_achieve_160105_170000.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_activegift_20151230_111138.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_bigmap_20131118_124138.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_bottommenu_20151208_120600.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_broadcast_20160308_165031.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_chat_20131118_124138.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_collection_151230_144600.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_dailysign_20131009_200000.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_family_1706281608.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_fristcharge_20160413_1516.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_gamereport_20150901_143600.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_gift_1708161633.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_lottery_20151130_181200.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_marquee_20160719.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_minimap_20160329_110600.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_newplayerguide_20160427_113300.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_notice_20160308_141300.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_petinfo_1708091610.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_petquan_20140306_145000.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_playercallback_20130510_164326.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_popad_20131009_200000.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_qrcode_20151216_144300.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_quiz_20130830_190000.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_rightmenu_20160321_110600.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_share_20160525_102500.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_skillnotice_20130129_184103.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_tasklist_20160321_110600.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_tasksystem_20130603_144300.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_taskui_20140121_110944.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_topicon_20160427_113300.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_xogame_20131016_153300.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/plugin_uiwrapper_20150827_114225.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/uiplugin_daygift_151020.swf"
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/ui/
                
                mkdir Wilderness; cd Wilderness
                        
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/Wilderness/WildernessScript.swf"
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/Wilderness/
                
                mkdir WorldMap; cd WorldMap
                        
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/WorldMap/WorldMap20130529.swf"
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/WorldMap/
                
                mkdir XOGame; cd XOGame
                
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/XOGame/XOGame120308.swf"
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/XOGame/
                
                mkdir zonelist; cd zonelist
                        
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/zonelist/ServerInfo1801031117.xml"
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/zonelist/
                
            cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/

        cd .. # resource.pet.qq.com/WebSoc/bin-release/
    
    cd .. # resource.pet.qq.com/WebSoc/
    
cd .. # resource.pet.qq.com/

mkdir web.pet.qq.com; cd web.pet.qq.com

    mkdir fcgi-bin; cd fcgi-bin
    
        for i in `seq 0 4`
        do
            wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID" "http://web.pet.qq.com/fcgi-bin/market?cmd=shop&ajax=1&kind=0&subkind=$i&spec=102"
            wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID" "http://web.pet.qq.com/fcgi-bin/market?cmd=shop&ajax=1&kind=0&subkind=$i&spec=103"
        done
        
        for i in `seq 0 2`
        do
            wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID" "http://web.pet.qq.com/fcgi-bin/market?cmd=shop&ajax=1&kind=1&subkind=$i&spec=102"
            wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID" "http://web.pet.qq.com/fcgi-bin/market?cmd=shop&ajax=1&kind=1&subkind=$i&spec=103"
        done
    
        for i in `seq 0 8`
        do
            wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID" "http://web.pet.qq.com/fcgi-bin/market?cmd=shop&ajax=1&kind=2&subkind=$i&spec=102"
            wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID" "http://web.pet.qq.com/fcgi-bin/market?cmd=shop&ajax=1&kind=2&subkind=$i&spec=103"
        done
        
        wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID" "http://web.pet.qq.com/fcgi-bin/market?cmd=shop&ajax=1&kind=3&spec=102"
        wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID" "http://web.pet.qq.com/fcgi-bin/market?cmd=shop&ajax=1&kind=3&spec=103"
        
        wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID" "http://web.pet.qq.com/fcgi-bin/market?cmd=shop&ajax=1&kind=4&spec=102"
        wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID" "http://web.pet.qq.com/fcgi-bin/market?cmd=shop&ajax=1&kind=4&spec=103"
        
        wget "http://web.pet.qq.com/fcgi-bin/petshow?petid=$PET_ID&level=30"
                
    cd .. # web.pet.qq.com/fcgi-bin/

    mkdir petquan; cd petquan
    
        wget "http://web.pet.qq.com/petquan/index.html"
    
    cd .. # web.pet.qq.com/petquan/

cd .. # web.pet.qq.com/

mkdir x.pet.qq.com; cd x.pet.qq.com

    wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID"  "http://x.pet.qq.com/shequdingbuicon?cmd=GetUser"
    for i in `seq 0 10`
    do
        wget --header "Cookie: uin=$uin; skey=$skey; PET_UIN=$PET_UIN; PET_ID=$PET_ID"  "http://x.pet.qq.com/babyinfo?cmd=$i"
    done

cd .. # x.pet.qq.com/

for file in `ls web.pet.qq.com/fcgi-bin/`; do iconv -f gb18030 -t utf8 web.pet.qq.com/fcgi-bin/$file | hjson -j -c | jq -r '.data.items[] | 
if .struct == "FeedConf"
then 
    if .kind == "13"
    then
        "wp/" + .pic + "_s.gif"
    else
        "wp/" + .pic + ".gif"
    end
else
    if .struct == "AvatarConf"
    then
        "avatar/" + .pos + "/" + .rid + ".png"
    else
        if .struct == "PropertyConf"
        then
            if .kind == "31"
            then
                "avatar_back/" + .rid + "_s.png"
            else
                if .kind == "15"
                then
                    if .subkind == "15"
                    then
                        "dj/" + .pic + "_s.gif"
                    else
                        "dj/" + .pic + ".gif"
                    end
                else
                    "dj/" + .pic + "_s.gif"
                end 
            end
        else
            if .struct == "PackConf"
            then 
                "pack/" + .rid + ".gif"
            else
                empty
            end
        end
    end
end'; done | sort | uniq > market.txt
wget -xB "http://img.pet.qq.com/" -i ../market.txt

