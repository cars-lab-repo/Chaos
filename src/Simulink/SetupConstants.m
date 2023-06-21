x0 = [.1;.2;-.5];       %Initial conditions for transmitter
%z0 = [.5;-.2;.3];       %and Reciever
z0 = x0;
beta = -36;              %System Constants (For Uniqueness)
rho = 2;
sig = 10;

DGain = 15/112;         %DGain and DOffset are used
DOffset = 15/16;        %s.t. Delta0 = DOffset + DGain and Delta1 = DOffset
hGain = 1/2;

NPower = 0;             %Transmission noise power

freq = 1/10;            %Message Frequency
delay = 10;             %Pulse Train delay (Does not apply to message)

weight = 0.4;
cut = 0.0015;