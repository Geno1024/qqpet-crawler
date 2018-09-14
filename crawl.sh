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
wget --recursive --level=inf --page-requisites --convert-links --adjust-extension --span-hosts --domains=pet.qq.com,act.pet.qq.com,resource.pet.qq.com,web.pet.qq.com,img.pet.qq.com http://pet.qq.com
wget --recursive --level=inf -S --page-requisites --span-hosts --domains=pet.qq.com,act.pet.qq.com,resource.pet.qq.com,web.pet.qq.com,img.pet.qq.com,gw.pet.qq.com http://gw.pet.qq.com/web07/help.shtml

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
    
    mkdir main; cd main
    
        for i in `seq 1 227`
        do
            wget "http://act.pet.qq.com/main/minigame_$i.html"
        done
    
    cd .. # act.pet.qq.com/main/

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

grep -hPo "http\:\/\/.+?\.swf" act.pet.qq.com/*/* | sort | uniq > act.txt
wget -xi act.txt

echo "
22/20091028180050_V2.png
22/20091028183124_V2.png
22/20091028183349_V2.png
22/20091028183511_V2.png
22/20091028183730_V2.png
22/20091028185405_V2.png
22/20091028185526_V2.png
22/20091028230815_V2.png
22/20091123175331_V2.png
22/20100112165502_V2.png
22/20100130135356_V2.png
22/20100520101832_V2.png
22/20100520104240_V2.png
22/20100520104416_V2.png
22/20100525194428_V2.png
22/20101019104829_V2.png
22/20101221193056_V2.png
22/20110112132235_V2.png
22/20110413165119_V2.png
22/20110824153736_V2.png
22/20110830173329_V2.png
22/20111019160600_V2.png
22/20120502143741_V2.png
22/20120808142914_V2.png
22/20120822162328_V2.png
22/20120926155636_V2.png
22/20120926160341_V2.png
22/20121010174621_V2.png
22/20121031145136_V2.png
22/20121212114806_V2.png
22/20130123175920_V2.png
22/20130313142317_V2.png
22/20130515174343_V2.png
22/20131030171205_V2.png
22/20140528212825_V2.png
22/20140604155932_V2.png
22/20140625125952_V2.png
22/20141029170935_V2.png
22/20151230143739_V2.png
22/20160302101440_V2.png
22/20160302101447_V2.png
22/20160330101903_V2.png
22/20160406111609_V2.png
22/20160407100624_V2.png
22/20160420125023_V2.png
22/20160510150609_V2.png
22/20160525144553_V2.png
22/20160719172329_V2.png
22/20160803142900_V2.png
22/20160810151257_V2.png
22/20161012154552_V2.png
22/20161012154732_V2.png
22/20161012154744_V2.png
24/20100104211527_V2.png
24/20100104211920_V2.png
24/20100104212447_V2.png
24/20100104212723_V2.png
24/20100104212907_V2.png
24/20100104213249_V2.png
24/20100105100047_V2.png
24/20100105133946_V2.png
24/20100105203957_V2.png
24/20100106173221_V2.png
24/20100106205305_V2.png
24/20100107102847_V2.png
24/20100119143603_V2.png
24/20100126174839_V2.png
24/20100525190632_V2.png
24/20100525190732_V2.png
24/20100525191721_V2.png
24/20100525202512_V2.png
24/20101201163438_V2.png
24/20101221192115_V2.png
24/20110214153045_V2.png
24/20110420104731_V2.png
24/20110420104749_V2.png
24/20110420104759_V2.png
24/20110420104804_V2.png
24/20110420104840_V2.png
24/20110420104852_V2.png
24/20110420172007_V2.png
24/20110420185931_V2.png
24/20110622113643_V2.png
24/20111201115535_V2.png
24/20130130155518_V2.png
24/20130410142943_V2.png
24/20130515174837_V2.png
24/20130609131951_V2.png
24/20130626153642_V2.png
24/20130828144118_V2.png
24/20131126151421_V2.png
24/20131204170630_V2.png
24/20131231163238_V2.png
24/20140226172913_V2.png
24/20140312161055_V2.png
24/20140604154326_V2.png
24/20140618152828_V2.png
24/20140813165059_V2.png
24/20140903155758_V2.png
24/20151028152052_V2.png
24/20151028152058_V2.png
24/20160420130509_V2.png
25/20100422134926_V2.png
25/20100423143045_V2.png
25/20100423145814_V2.png
25/20100423151413_V2.png
25/20100423154738_V2.png
25/20100426102854_V2.png
25/20100426203738_V2.png
25/20100825095705_V2.png
25/20101117151338_V2.png
25/20101117151353_V2.png
25/20101117151730_V2.png
25/20110110200533_V2.png
25/20111223120504_V2.png
25/20130626153101_V2.png
25/20131002172515_V2.png
25/20151028152142_V2.png
25/20151028152147_V2.png
25/20160420105832_V2.png
25/20160420105845_V2.png
25/20160420110554_V2.png
28/20100601145342_V2.png
28/20100601200833_V2.png
28/20100601205003_V2.png
28/20100601205216_V2.png
28/20100601205639_V2.png
28/20100601221706_V2.png
28/20100602100445_V2.png
28/20100602124813_V2.png
28/20100602125333_V2.png
28/20100602153822_V2.png
28/20100602184451_V2.png
28/20100602193022_V2.png
28/20100612160112_V2.png
28/20100809183830_V2.png
28/20100823192512_V2.png
28/20100925105120_V2.png
28/20101026154118_V2.png
28/20101215151617_V2.png
28/20110316175332_V2.png
28/20110316182353_V2.png
28/20111109114335_V2.png
28/20111201115953_V2.png
28/20120725173941_V2.png
28/20121226170850_V2.png
28/20130130155818_V2.png
28/20130925144729_V2.png
28/20131030114350_V2.png
28/20151028152221_V2.png
28/20160120111021_V2.png
28/20160420130808_V2.png
28/20161123145148_V2.png
6/20090710174453_V2.png
6/20090728104348_V2.png
6/20090825164821_V2.png
6/20090919193414_V2.png
6/20090919200240_V2.png
6/20091021214129_V2.png
6/20091021214954_V2.png
6/20091021215750_V2.png
6/20100504125416_V2.png
6/20100525193038_V2.png
6/20100525193056_V2.png
6/20100623112824_V2.png
6/20100809172041_V2.png
6/20100823185709_V2.png
6/20100901160034_V2.png
6/20100903151611_V2.png
6/20101103191046_V2.png
6/20111201111640_V2.png
6/20120418121845_V2.png
6/20120418122142_V2.png
6/20120912120248_V2.png
6/20121219114934_V2.png
6/20130327150306_V2.png
6/20130605171009_V2.png
6/20130731183711_V2.png
6/20130812145522_V2.png
6/20130821111638_V2.png
6/20130830171953_V2.png
6/20130911130906_V2.png
6/20130917162114_V2.png
6/20131021112022_V2.png
6/20131113151949_V2.png
6/20131211125140_V2.png
6/20131225131839_V2.png
6/20140102185153_V2.png
6/20140212190603_V2.png
6/20140319175009_V2.png
6/20140402144904_V2.png
6/20140429180941_V2.png
6/20140507121524_V2.png
6/20150916131428_V2.png
6/20151028152015_V2.png
6/20160420112313_V2.png
6/20160420123551_V2.png
6/20160420123649_V2.png
" > scene.txt

wget -xB "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene" -i scene.txt
