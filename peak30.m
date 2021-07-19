clear all;
%读调整参数
parameter=readtable("C:\TIMES\MCA\MCA-parameter\PEAK30");
parameter=parameter(:,2:(size(parameter,2)));
parameter=table2array(parameter);


%读原始数据
oldparameter=readtable("C:\TIMES\MCA\data\mca-peak30.xlsx");
oldparameter=table2array(oldparameter(:,10:18));
newparameter=oldparameter;

EPOCH=1000;

for i=1:EPOCH
    
    
    %%%%%%%%%%%%%%%%%%
    %碳预算！！！
    carbon=num2str(parameter(i,8)*1e6);
    %%%%%%%%%%%%%%%%%%
    
    k=1;
    %actcost_dish2n
    newparameter(k,:)=oldparameter(k,:)*parameter(i,9);k = k + 1;
    %actcost_beccs1
    newparameter(k,:)=oldparameter(k,:)*parameter(i,7);k = k + 1;
    %actcost_beccs2
    newparameter(k,:)=oldparameter(k,:)*parameter(i,7);k = k + 1;
    %actcost_igccccs
    newparameter(k,:)=oldparameter(k,:)*parameter(i,10);k = k + 1;
    %actcost_oxyccs
    newparameter(k,:)=oldparameter(k,:)*parameter(i,10);k = k + 1;
    %actcost_uscccs
    newparameter(k,:)=oldparameter(k,:)*parameter(i,10);k = k + 1;
    %actcost_nuclear-inland
    newparameter(k,:)=oldparameter(k,:)*parameter(i,11);k = k + 1;
    %actcost_nuclear
    newparameter(k,:)=oldparameter(k,:)*parameter(i,11);k = k + 1;
    %actcost_nuclear
    newparameter(k,:)=oldparameter(k,:)*parameter(i,11);k = k + 1;
    %actcost_pv
    newparameter(k,:)=oldparameter(k,:)*parameter(i,4);k = k + 1;
    %actcost_windoff
    newparameter(k,:)=oldparameter(k,:)*parameter(i,6);k = k + 1;
    %actcost_windon
    newparameter(k,:)=oldparameter(k,:)*parameter(i,6);k = k + 1;
    
    %cap_nuclear-inland
    newparameter(k,:)=oldparameter(k,:)*parameter(i,13);k = k + 1;
    %cap_bio1
    newparameter(k,:)=oldparameter(k,:)*parameter(i,3);k = k + 1;
    %cap_bio2
    newparameter(k,:)=oldparameter(k,:)*parameter(i,3);k = k + 1;
    
    %ACOM_ELAST_AGR-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_AGR-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_COM_COOL-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_COM_COOL-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_COM_EQUIP-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_COM_EQUIP-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_COM_HEAT-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_COM_HEAT-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_COM_LIGHT-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_COM_LIGHT-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_COM_WC-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_COM_WC-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_FPIPDMD-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_FPIPDMD-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_FREIGHT_DOM_DMD-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_FREIGHT_DOM_DMD-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_FREIGHT_INTL_AIR-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_FREIGHT_INTL_AIR-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_FREIGHT_INTL_SHI-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_FREIGHT_INTL_SHI-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_FREIGHT_RURAL-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_FREIGHT_RURAL-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_IBUCEM-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_IBUCEM-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_IBUGLA-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_IBUGLA-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_ICHETE-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_ICHETE-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_ICHNACO-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_ICHNACO-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_ICHNAOH-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_ICHNAOH-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_ICHNH3-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_ICHNH3-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_IIS-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_IIS-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_ILP-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_ILP-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_INFAL-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_INFAL-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_INFCU-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_INFCU-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_INFPB-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_INFPB-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_INFZN-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_INFZN-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_IOIE-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_IOIE-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_IOIH-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_IOIH-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_IOIM-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_IOIM-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_PASS_BUSINESS-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_PASS_BUSINESS-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_PASS_INTER-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_PASS_INTER-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_PASS_INTL_AIR-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_PASS_INTL_AIR-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_PASS_RURAL-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_PASS_RURAL-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_PASS_URBAN-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_PASS_URBAN-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_RUL_APP-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_RUL_APP-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_RUL_APP2-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_RUL_APP2-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_RUL_COOL-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_RUL_COOL-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_RUL_HEAT-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_RUL_HEAT-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_RUL_LIGHT-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_RUL_LIGHT-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_RUL_WC-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_RUL_WC-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_URB_APP-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_URB_APP-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_URB_COOL-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_URB_COOL-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_URB_HEAT-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_URB_HEAT-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_URB_LIGHT-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_URB_LIGHT-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_URB_WC-LO
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    %ACOM_ELAST_URB_WC-UP
    newparameter(k,:)=oldparameter(k,:)*parameter(i,14);k = k + 1;
    
    %beccs
    newparameter(k,:)=oldparameter(k,:)*parameter(i,3);k = k + 1;
    %Nulear-inland
    newparameter(k,:)=oldparameter(k,:)*parameter(i,13);k = k + 1;
    %ncap_pv
    newparameter(k,:)=oldparameter(k,:)*parameter(i,2);k = k + 1;
    %ncap_windoff
    newparameter(k,:)=oldparameter(k,:)*parameter(i,1);k = k + 1;
    %ncap_windon
    newparameter(k,:)=oldparameter(k,:)*parameter(i,1);k = k + 1;
    
    %ncapcost_beccs1
    newparameter(k,:)=oldparameter(k,:)*parameter(i,7);k = k + 1;
    %ncapcost_beccs2
    newparameter(k,:)=oldparameter(k,:)*parameter(i,7);k = k + 1;
    %ncapcost_igccccs
    newparameter(k,:)=oldparameter(k,:)*parameter(i,10);k = k + 1;
    %ncapcost_oxyccs
    newparameter(k,:)=oldparameter(k,:)*parameter(i,10);k = k + 1;
    %ncapcost_uscccs
    newparameter(k,:)=oldparameter(k,:)*parameter(i,10);k = k + 1;
    %ncapcost_nuclear-inland
    newparameter(k,:)=oldparameter(k,:)*parameter(i,11);k = k + 1;
    %ncapcost_nuclear
    newparameter(k,:)=oldparameter(k,:)*parameter(i,11);k = k + 1;
    %ncapcost_nuclear
    newparameter(k,:)=oldparameter(k,:)*parameter(i,11);k = k + 1;
    %ncapcost_pv
    newparameter(k,:)=oldparameter(k,:)*parameter(i,4);k = k + 1;
    %ncapcost_windoff
    newparameter(k,:)=oldparameter(k,:)*parameter(i,6);k = k + 1;
    %ncapcost_windon
    newparameter(k,:)=oldparameter(k,:)*parameter(i,6);k = k + 1;
    %ncapcost_Cement CCS
    newparameter(k,:)=oldparameter(k,:)*parameter(i,12);k = k + 1;
    %ncapcost_NH3-COAL CCS
    newparameter(k,:)=oldparameter(k,:)*parameter(i,12);k = k + 1;
    %ncapcost_NH3-NGA CCS
    newparameter(k,:)=oldparameter(k,:)*parameter(i,12);k = k + 1;
    %ncapcost_NH3-OIL CCS
    newparameter(k,:)=oldparameter(k,:)*parameter(i,12);k = k + 1;
    %ncapcost_Iron CCS
    newparameter(k,:)=oldparameter(k,:)*parameter(i,12);k = k + 1;
    %ncapcost_caes
    newparameter(k,:)=oldparameter(k,:)*parameter(i,5);k = k + 1;
    %ncapcost_flow
    newparameter(k,:)=oldparameter(k,:)*parameter(i,5);k = k + 1;
    %ncapcost_flyw
    newparameter(k,:)=oldparameter(k,:)*parameter(i,5);k = k + 1;
    %ncapcost_Li-ion
    newparameter(k,:)=oldparameter(k,:)*parameter(i,5);k = k + 1;
    %ncapcost_bac
    newparameter(k,:)=oldparameter(k,:)*parameter(i,5);k = k + 1;
    %ncapcost_shp
    newparameter(k,:)=oldparameter(k,:)*parameter(i,5);k = k + 1;
    %ncapcost_mes
    newparameter(k,:)=oldparameter(k,:)*parameter(i,5);k = k + 1;
    %ncapcost_H2N
    newparameter(k,:)=oldparameter(k,:)*parameter(i,9);k = k + 1;
    
    %ncapfom_beccs1
    newparameter(k,:)=oldparameter(k,:)*parameter(i,7);k = k + 1;
    %ncapfom_beccs2
    newparameter(k,:)=oldparameter(k,:)*parameter(i,7);k = k + 1;
     %ncapfom_igccccs
    newparameter(k,:)=oldparameter(k,:)*parameter(i,10);k = k + 1;
    %ncapfom_oxyccs
    newparameter(k,:)=oldparameter(k,:)*parameter(i,10);k = k + 1;
    %ncapfom_uscccs
    newparameter(k,:)=oldparameter(k,:)*parameter(i,10);k = k + 1;
    %ncapfom_nuclear-inland
    newparameter(k,:)=oldparameter(k,:)*parameter(i,11);k = k + 1;
    %ncapfom_nuclear
    newparameter(k,:)=oldparameter(k,:)*parameter(i,11);k = k + 1;
    %ncapfom_nuclear
    newparameter(k,:)=oldparameter(k,:)*parameter(i,11);k = k + 1;
    %ncapfom_pv
    newparameter(k,:)=oldparameter(k,:)*parameter(i,4);k = k + 1;
    %ncapfom_windoff
    newparameter(k,:)=oldparameter(k,:)*parameter(i,6);k = k + 1;
    %ncapfom_windon
    newparameter(k,:)=oldparameter(k,:)*parameter(i,6);k = k + 1;
    %ncapfom_H2N
    newparameter(k,:)=oldparameter(k,:)*parameter(i,9);k = k + 1;
    
    %cap_Nuclear-o
    newparameter(k,:)=oldparameter(k,:)*parameter(i,13);k = k + 1;
    %cap_Nuclear-r
    newparameter(k,:)=oldparameter(k,:)*parameter(i,13);k = k + 1;
    
    finalparameter=num2str(newparameter,'%-16g');
    
    %生成DDS文件
    fpathr = 'MCA-PEAK30+CHINA.DDS';
    fpathw = [num2str(i),'.DDS'];
    fidr  =fopen(fpathr,'rt');
    fidw = fopen(fpathw,'wt');
    flag="NULL";
    k=1;
    while ~feof(fidr)
        s= fgetl(fidr);
        switch flag
            case "NULL"
                if (s=="PARAMETER ACOMCUMNET /")
                    fprintf(fidw,'%s\n',s);
                    flag="CUMNET";
                    
                elseif(s=="       TABLE AACT_COST")
                    fprintf(fidw,'%s\n',s);
                    s= fgetl(fidr);
                    fprintf(fidw,'%s\n',s);
                    flag="ACT_COST";
                    
                elseif(s=="       TABLE ACAP_BND")
                    fprintf(fidw,'%s\n',s);
                    s= fgetl(fidr);
                    fprintf(fidw,'%s\n',s);
                    flag="CAP_BND";
                    
                elseif(s=="       TABLE AG_DRATE")
                    fprintf(fidw,'%s\n',s);
                    s= fgetl(fidr);
                    fprintf(fidw,'%s\n',s);
                    flag="G_DRATE";
                    
                elseif(s=="       TABLE ACOM_ELAST")
                    fprintf(fidw,'%s\n',s);
                    s= fgetl(fidr);
                    fprintf(fidw,'%s\n',s);
                    flag="COM_ELAST";
                    
                elseif(s=="       TABLE ANCAP_BND")
                    fprintf(fidw,'%s\n',s);
                    s= fgetl(fidr);
                    fprintf(fidw,'%s\n',s);
                    flag="NCAP_BND";
                    
                elseif(s=="       TABLE ANCAP_COST")
                    fprintf(fidw,'%s\n',s);
                    s= fgetl(fidr);
                    fprintf(fidw,'%s\n',s);
                    flag="NCAP_COST";
                    
                elseif(s=="       TABLE ANCAP_FOM")
                    fprintf(fidw,'%s\n',s);
                    s= fgetl(fidr);
                    fprintf(fidw,'%s\n',s);
                    flag="NCAP_FOM";
                    
                elseif(s=="       TABLE AUC_RHSRT")
                    fprintf(fidw,'%s\n',s);
                    s= fgetl(fidr);
                    fprintf(fidw,'%s\n',s);
                    flag="AUC_RHSRT";
                    
                else
                    fprintf(fidw,'%s\n',s);
                end
                
            case "CUMNET"
                if (s=="/;")
                    fprintf(fidw,'%s\n',s);
                    flag="NULL";
                else
                    fprintf(fidw,['%s' carbon '\n'],s(1:139));
                end
                
            case "ACT_COST"
                if (s==";")
                    fprintf(fidw,'%s\n',s);
                    flag="NULL";
                else
                    fprintf(fidw,['%s' finalparameter(k,:) '\n'],s(1:64));
                    k=k+1;
                end
                
            case "CAP_BND"
                if (s==";")
                    fprintf(fidw,'%s\n',s);
                    flag="NULL";
                else
                    fprintf(fidw,['%s' finalparameter(k,:) '\n'],s(1:91));
                    k=k+1;
                end
                
            case "G_DRATE"
                if (s==";")
                    fprintf(fidw,'%s\n',s);
                    flag="NULL";
                else
                    fprintf(fidw,['%s' finalparameter(k,:) '\n'],s(1:37));
                    k=k+1;
                end
                
            case "COM_ELAST"
                if (s==";")
                    fprintf(fidw,'%s\n',s);
                    flag="NULL";
                else
                    fprintf(fidw,['%s' finalparameter(k,:) '\n'],s(1:117));
                    k=k+1;
                end
                
            case "NCAP_BND"
                if (s==";")
                    fprintf(fidw,'%s\n',s);
                    flag="NULL";
                else
                    fprintf(fidw,['%s' finalparameter(k,:) '\n'],s(1:91));
                    k=k+1;
                end
                
            case "NCAP_COST"
                if (s==";")
                    fprintf(fidw,'%s\n',s);
                    flag="NULL";
                else
                    fprintf(fidw,['%s' finalparameter(k,:) '\n'],s(1:64));
                    k=k+1;
                end
                
            case "NCAP_FOM"
                if (s==";")
                    fprintf(fidw,'%s\n',s);
                    flag="NULL";
                else
                    fprintf(fidw,['%s' finalparameter(k,:) '\n'],s(1:64));
                    k=k+1;
                end
            case "AUC_RHSRT"
                if (s==";")
                    fprintf(fidw,'%s\n',s);
                    flag="NULL";
                else
                    fprintf(fidw,['%s' finalparameter(k,:) '\n'],s(1:91));
                    k=k+1;
                end
                
            otherwise
                fprintf(fidw,'%s\n',s);
                flag="NULL";
                
        end
    end
    fclose(fidr);
    fclose(fidw);
    
    
    %修改GEN文件
    gpathr = 'MCA-PEAK30.GEN';
    gpathw = [num2str(i),'.GEN'];
    gidr  =fopen(gpathr,'rt');
    gidw = fopen(gpathw,'wt');
    
    a0="$INCLUDE MCA-PEAK30+CHINA.DDS";
    b0="$SET RUN_NAME  'MCA-PEAK30'";
    a1=['$INCLUDE ' fpathw];
    b1=strcat("$SET RUN_NAME  ",' ',  "'",num2str(i) ,"'");
    
    while ~feof(gidr)
        s = fgetl(gidr);
        s1 = strrep(s,a0,a1);
        if (s1==a1)
            fprintf(gidw,'%s\n',s1);
        else
            s2 = strrep(s,b0,b1);
            fprintf(gidw,'%s\n',s2);
        end
    end
    fclose(gidr);
    fclose(gidw);
    
    %制作run文件
    rpathr = 'ANSRUN.CMD';
    rpathw=[num2str(i),'.CMD'];
    ridr  =fopen(rpathr,'rt');
    ridw = fopen(rpathw,'wt');
    while ~feof(ridr)
        s3= fgetl(ridr);
        s3 = strrep(s3,"MCA-PEAK30",num2str(i));
        s3 = strrep(s3,"C:\AnswerTIMESv6\Gams_WrkTI\Gamssave c:\answertimesv6\gams_wrkti\gamssave\mca-peak30",num2str(i));
        fprintf(ridw,'%s\n',s3);
    end
    fclose(ridr);
    fclose(ridw);
    
end

for i=1:EPOCH
    rpathw=[num2str(i),'.CMD'];
    system(rpathw);
    i
end



