%DH parameter using Peter Corke Robotic Toolbox

%start RVC toolbox
% startup_rvc

%List of Link Length:
L1= 0; L2=600; L3=0; L4=522; L5=0; L6=400; L7=0; L8=300; L9=0; L10=200; 
L11=0; L12=202; L13=0; L14=205; L15=0; L16=132; L17=0; L18=100;

%Create Links using this code 
%L = Link([th d a alpha]);    
L(1)=Link ([0 0  L1 -pi/2]);
L(2)=Link ([0 0 L2  pi/2]);
L(3)=Link ([0 0  L3 -pi/2]);
L(4)=Link ([0 0 L4  pi/2]);
L(5)=Link ([0 0  L5 -pi/2]);
L(6)=Link ([0 0 L6  pi/2]);
L(7)=Link ([0 0  L7 -pi/2]);
L(8)=Link ([0 0 L8  pi/2]);
L(9)=Link ([0 0  L9 -pi/2]);
L(10)=Link ([0 0 L10  pi/2]);
L(11)=Link ([0 0  L11 -pi/2]);
L(12)=Link ([0 0 L12  pi/2]);
L(13)=Link ([0 0  L13 -pi/2]);
L(14)=Link ([0 0 L14  pi/2]);
L(15)=Link ([0 0  L15 -pi/2]);
L(16)=Link ([0 0 L16  pi/2]);
L(17)=Link ([0 0  L17 -pi/2]);
L(18)=Link ([0 0 L18  pi/2]);

%limit for links
L(1).qlim = pi/180*[-30 30];
L(2).qlim = pi/180*[-30 30];
L(3).qlim = pi/180*[-30 30];
L(4).qlim = pi/180*[-30 30];
L(5).qlim =  pi/180*[-30 30];
L(6).qlim = pi/180*[-30 30];
L(7).qlim = pi/180*[-30 30];
L(8).qlim = pi/180*[-30 30];
L(9).qlim = pi/180*[-30 30];
L(10).qlim = pi/180*[-30 30];
L(11).qlim = pi/180*[-30 30];
L(12).qlim = pi/180*[-30 30];
L(13).qlim = pi/180*[-30 30];
L(14).qlim = pi/180*[-30 30];
L(15).qlim = pi/180*[-30 30];
L(16).qlim = pi/180*[-30 30];
L(17).qlim = pi/180*[-30 30];
L(18).qlim = pi/180*[-30 30];


%Create the Robot
Rob = SerialLink(L);
Rob.name='Snake Robot';

q = [0 0 0 0 0 0 0 pi/4 pi/4 0 0 0 0 0 0 0 0 0];
Rob.plot(q,'workspace',[-3500 4000 -3500 3500 -3500 3500],'tilesize',1);


%%%Run this command in the command window to control the joint motions manually using sliders!  
%Rob.teach


% 
% for i=1:1:2
% if (i==1)
%         % starting position
%         qz = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
%         
%         % ready position
%         qr = [-pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6];
%        
%         % generate a time vector
%         t = (0:0.056:5);
%        
%         % computes the joint coordinate trajectory
%         q = jtraj(qz, qr, t);
%        
%         % direct kinematics for each joint coordinate
%         T = Rob.fkine(q);
%        
%         Rob.plot(q,'workspace',[-3500 4000 -3500 3500 -3500 3500],'tilesize',1);
% end
% 
% if (i==2)    
% 
%          % starting position
%         qz = [-pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6 -pi/6];
%         qr = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]; t = (0:0.056:5);
%         % computes the joint coordinate trajectory
%         q = jtraj(qz, qr, t);
%         % direct kinematics for each joint co-ordinate
%         T = Rob.fkine(q);
%         Rob.plot(q,'workspace',[-3500 4000 -3500 3500 -3500 3500],'tilesize',1);
% end
% end


