library(reshape2)
library(ggplot2)
library(ggridges)
library(ggsci)
library(openxlsx)
require(gridExtra)
data1<-read.csv("D:/NCrawdata.csv", header = T)
data1$Tech1<-factor(data1$Tech,levels=c("PV power capacity (TW)","Wind power capacity (TW)","Annual energy storage usage (PWh)","BECCS power capacity (GW)","Thermal power with CCS capacity (GW)","Nuclear power capacity (GW)"))
data1$Sce1<-factor(data1$Scenario,levels=c("PEAK30","PEAK25","PEAK20"))
p1=ggplot(data1,aes(x = Capacity, y =Sce1 , fill=factor(Period)))+facet_wrap(~Tech1,ncol=3,scales="free")+
  geom_density_ridges(scale = 0.95,quantile_lines = TRUE,rel_min_height = 0.001,alpha = 0.75,na.rm = TRUE)+
  scale_x_continuous(expand = c(0.01, 0))+
  scale_y_discrete(expand = c(0.01, 0)) +   
  theme_ridges(center = TRUE)+
  theme(axis.text.y = element_text(hjust = -0.4,angle = 90))+
  labs(fill=NULL,x=NULL,y=NULL)+scale_fill_npg()+
  guides(fill=guide_legend(ncol=1))+theme(legend.position = c(0.94,0.12),legend.background = element_rect(fill = "white"))+
  theme(strip.text=element_text(vjust=0.7))
p1  
ggsave("PDF.pdf",p1,width=12,height=8)
