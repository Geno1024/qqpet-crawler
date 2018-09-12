mkdir resource.pet.qq.com; cd resource.pet.qq.com

    mkdir WebSoc; cd WebSoc;

        mkdir bin-release; cd bin-release

            wget "http://resource.pet.qq.com/WebSoc/bin-release/main.swf"

            mkdir Data; cd Data
                
                wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/FaceViewInfo.xml"

                mkdir res; cd res

                    mkdir scene; cd scene
                    
                        for i in `seq 0 11`; do for j in `seq 0 12`; do echo $i"_"$j".jpg"; done; done > mapbase.txt

                        mkdir 22; cd 22

                            for i in `seq 110 221`
                            do
                                if [[ $(wget -O /dev/null "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/22/bg_V"$i"/0_0.jpg"; echo $?) -eq 0 ]]
                                then
                                    mkdir "bg_V"$i; cd "bg_V"$i
                                    wget -B "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/22/bg_V"$i"/" -i ../../mapbase.txt
                                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/22/minimap_V"$i".png"
                                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/22/largemp_V"$i".png"
                                    cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/22/bg_V$i/
                                fi
                            done

                        cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/res/scene/22/

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
                
                mkdir ui; cd ui
                
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_topicon_20160427_113300.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_bottommenu_20151208_120600.swf"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/ui/menuchild_tasksystem_20130603_144300.swf"
                
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/ui/
                
                mkdir Music; cd Music
                
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/Music/main01.mp3"
                    wget "http://resource.pet.qq.com/WebSoc/bin-release/Data/Music/main02.mp3"
                
                cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/Music/
                
            cd .. # resource.pet.qq.com/WebSoc/bin-release/Data/

        cd .. # resource.pet.qq.com/WebSoc/bin-release/
    
    cd .. # resource.pet.qq.com/WebSoc/
    
cd .. # resource.pet.qq.com/

mkdir pet.qq.com; cd pet.qq.com

    mkdir static

        wget "http://pet.qq.com/static/mapnew_conf.json"    
    
    cd .. # static

cd .. # pet.qq.com/
