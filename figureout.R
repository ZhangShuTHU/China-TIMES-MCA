library(reshape2)
library(ggplot2)
library(ggridges)
library(ggsci)
library(openxlsx)
require(gridExtra)
data1<-read.csv("C:/Users/44728/OneDrive/Documents/solar.csv", header = T)
data1[Scenario]
p1=ggplot(data1,aes(x = Capacity, y =Scenario , fill=factor(Period)))+
  geom_density_ridges(scale = 0.95,quantile_lines = TRUE,rel_min_height = 0.001,alpha = 0.75)+
  scale_x_continuous(expand = c(0.01, 0), name = "Solar capacity (TW)")+
  scale_y_discrete(expand = c(0.01, 0)) +
  scale_fill_discrete(name="Period",position='bottom')+
  theme_ridges(center = TRUE)+
  theme(legend.position = c(0.73,0.9),legend.background = element_rect(fill = "white")) +
  theme(axis.text.y = element_text(hjust = -1.8,angle = 90))+
  labs(fill=NULL,y=NULL)+scale_fill_npg()
ggsave("PDF1.svg",p1,width=3.7,height=9)

data2<-read.csv("C:/Users/44728/OneDrive/Documents/wind.csv", header = T)
p2=ggplot(data2,aes(x = Capacity, y =Scenario , fill=factor(Period)))+
  geom_density_ridges(scale = 0.95,quantile_lines = TRUE,rel_min_height = 0.001,alpha = 0.75)+
  scale_x_continuous(expand = c(0.01, 0), name = "Wind capacity (TW)")+
  scale_y_discrete(expand = c(0.01, 0)) +
  scale_fill_discrete(name="Period",position='bottom')+
  theme_ridges(center = TRUE)+
  theme(legend.position = c(0.73,0.9),legend.background = element_rect(fill = "white")) +
  theme(axis.text.y = element_text(hjust = -1.8,angle = 90))+
  labs(fill=NULL,y=NULL)+scale_fill_npg()
ggsave("PDF2.svg",p2,width=3.7,height=9)

data3<-read.csv("C:/Users/44728/OneDrive/Documents/storage.csv", header = T)
p3=ggplot(data3,aes(x = Capacity, y =Scenario , fill=factor(Period)))+
  geom_density_ridges(scale = 0.95,quantile_lines = TRUE,rel_min_height = 0.001,alpha = 0.75)+
  scale_x_continuous(expand = c(0.01, 0), name = "Energy storage usage (PWh)")+
  scale_y_discrete(expand = c(0.01, 0)) +
  scale_fill_discrete(name="Period",position='bottom')+
  theme_ridges(center = TRUE)+
  theme(legend.position = c(0.73,0.9),legend.background = element_rect(fill = "white")) +
  theme(axis.text.y = element_text(hjust = -1.8,angle = 90))+
  labs(fill=NULL,y=NULL)+scale_fill_npg()
ggsave("PDF3.svg",p3,width=3.7,height=9)


data4<-read.csv("C:/Users/44728/OneDrive/Documents/BECCS.csv", header = T)
p4=ggplot(data4,aes(x = Capacity, y =Scenario , fill=factor(Period)))+
  geom_density_ridges(scale = 0.95,quantile_lines = TRUE,rel_min_height = 0.001,alpha = 0.75)+
  scale_x_continuous(expand = c(0.01, 0), name = "BECCS capacity (GW)")+
  scale_y_discrete(expand = c(0.01, 0)) +
  scale_fill_discrete(name="Period",position='bottom')+
  theme_ridges(center = TRUE)+
  theme(legend.position = c(0.73,0.9),legend.background = element_rect(fill = "white")) +
  theme(axis.text.y = element_text(hjust = -1.8,angle = 90))+
  labs(fill=NULL,y=NULL)+scale_fill_npg()
ggsave("PDF4.svg",p4,width=3.7,height=9)

data5<-read.csv("C:/Users/44728/OneDrive/Documents/CoalCCS.csv", header = T)
p5=ggplot(data5,aes(x = Capacity, y =Scenario , fill=factor(Period)))+
  geom_density_ridges(scale = 0.95,quantile_lines = TRUE,rel_min_height = 0.001,alpha = 0.75)+
  scale_x_continuous(expand = c(0.01, 0), name = "Thermal power with CCS capacity (GW)")+
  scale_y_discrete(expand = c(0.01, 0)) +
  scale_fill_discrete(name="Period",position='bottom')+
  theme_ridges(center = TRUE)+
  theme(legend.position = c(0.73,0.9),legend.background = element_rect(fill = "white")) +
  theme(axis.text.y = element_text(hjust = -1.8,angle = 90))+
  labs(fill=NULL,y=NULL)+scale_fill_npg()
ggsave("PDF5.svg",p5,width=3.7,height=9)

data6<-read.csv("C:/Users/44728/OneDrive/Documents/Nuclear.csv", header = T)
p6=ggplot(data6,aes(x = Capacity, y =Scenario , fill=factor(Period)))+
  geom_density_ridges(scale = 0.95,quantile_lines = TRUE,rel_min_height = 0.001,alpha = 0.75)+
  scale_x_continuous(expand = c(0.01, 0), name = "Nuclear capacity (GW)")+
  scale_y_discrete(expand = c(0.01, 0)) +
  scale_fill_discrete(name="Period",position='bottom')+
  theme_ridges(center = TRUE)+
  theme(legend.position = c(0.73,0.9),legend.background = element_rect(fill = "white")) +
  theme(axis.text.y = element_text(hjust = -1.8,angle = 90))+
  labs(fill=NULL,y=NULL)+scale_fill_npg()
ggsave("PDF6.svg",p6,width=3.7,height=9)