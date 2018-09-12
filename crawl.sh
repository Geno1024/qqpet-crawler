mkdir resource.pet.qq.com; cd resource.pet.qq.com

    mkdir WebSoc; cd WebSoc;

        mkdir bin-release; cd bin-release

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
            wget "http://resource.pet.qq.com/WebSoc/bin-release/plugin_zone_20130121_170000.swf"
            
            mkdir assets; cd assets
            
                wget "http://resource.pet.qq.com/WebSoc/bin-release/assets/pet/pet_20120301.swf"
                
            cd .. # resource.pet.qq.com/WebSoc/bin-release/assets/
            
            mkdir Data; cd Data
                
                wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/FaceViewInfo.xml"
                wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/petstatusdesc2.xml"
                wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/PetTitleCfg_1807041035.xml"
                wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/SceneVersionConfig_1808201648.xml"

                mkdir res; cd res

                    mkdir scene; cd scene

                        for map in 22 6 28 24 25 21
                        do
                            mkdir $map; cd $map

                                for i in `seq 0 221`
                                do
                                    if [[ $(wget -O /dev/null "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/"$map"/bg_V"$i"/0_0.jpg"; echo $?) -eq 0 ]]
                                    then
                                        mkdir "bg_V"$i; cd "bg_V"$i
                                        for x in `seq 0 11`; do for y in `seq 0 12`; do echo $x"_"$y".jpg"; done; done > mapbase.txt
                                        wget -B "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/"$map"/bg_V"$i"/" -i mapbase.txt
                                        wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/"$map"/minimap_V"$i".png"
                                        wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/"$map"/largemp_V"$i".png"
                                        rm mapbase.txt
                                        cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/$map/bg_V$i/
                                    fi
                                done

                            cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/$map/
                         done
                         
                    cd 22
                        
                        wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/22/20091028183349_V2.png"
                        
                    cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/22

                    cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/
                    
                    mkdir topicon; cd topicon
                    
                        for i in `seq 1 12`
                        do
                            wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/topicon/tongyong"$i".png"
                        done
                    
                    cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/topicon/
                    
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

                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/
                
                mkdir title; cd title
                
                    for i in `seq 1 5`
                    do
                        wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/title/satrs_"$i".gif"
                    done

                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/title/
                
                mkdir face; cd face
                
                    for i in `seq 1 25`
                    do
                        wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/face/"$i".png"
                    done
                
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/face/
                
                mkdir pet; cd pet
                
                    for i in `seq 0 2`
                    do
                        for j in `seq 2 3`
                        do
                            wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/pet/1"$i$j".png"
                        done
                    done
                
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/pet/
                
                mkdir zonelist; cd zonelist
                        
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/zonelist/ServerInfo1801031117.xml"
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/zonelist/
                
                mkdir WorldMap; cd WorldMap
                        
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/WorldMap/WorldMap20130529.swf"
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/zonelist/
                
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
                    
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/ui/
                
                mkdir Music; cd Music
                
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/Music/main01.mp3"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/Music/main02.mp3"
                
                cd .. 
                
            cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/

        cd .. # resource.pet.qq.com/WebSoc/bin-release/
    
    cd .. # resource.pet.qq.com/WebSoc/
    
cd .. # resource.pet.qq.com/

mkdir pet.qq.com; cd pet.qq.com

    mkdir static; cd static

        wget "http://pet.qq.com/static/mapnew_conf.json"
        wget "http://pet.qq.com/static/pet_act_conf.json"
        wget "http://pet.qq.com/static/pet_task_conf.json"
    
    cd .. # pet.qq.com/static/
    
    mkdir resource; cd resource
    
        mkdir js; cd js
            
            wget "http://pet.qq.com/resource/js/jquery.js"
            wget "http://pet.qq.com/resource/js/jquery.base_v4.js"
            wget "http://pet.qq.com/resource/js/pet_v3.js"
        
        cd .. # pet.qq.com/resource/js
        
    cd .. # pet.qq.com/resource/

cd .. # pet.qq.com/

mkdir img.pet.qq.com; cd img.pet.qq.com

    mkdir portal; cd portal
    
        mkdir uploadfiles; cd uploadfiles
        
            mkdir 2018-08-23; cd 2018-08-23
            
                wget "http://img.pet.qq.com/portal/uploadfiles/2018-08-23/41alb.png"
            
            cd .. # img.pet.qq.com/portal/uploadfiles/2018-08-23
        
        cd .. # img.pet.qq.com/portal/uploadfiles
    
    cd .. # img.pet.qq.com/portal

cd .. # img.pet.qq.com/
