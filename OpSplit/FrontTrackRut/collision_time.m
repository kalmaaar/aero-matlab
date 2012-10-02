function t=collision_time(s,t,x,T)%%	Finds the collsion time between two discontinuities moving with speed%	's(1)' and 's(2)' starting at the points (x(1),t(1)) and (x(2),t(2))%   respectively. If no collsion then t=T+1, if there is no collision before%   T, then t=T.%if nargin<4	T=1e6;end;sl=s(1); sr=s(2);tl=t(1); tr=t(2);xl=x(1); xr=x(2);if sr > sl, 	t=T+1;elseif sr < sl, 	h1=sl*tl;	h2=sr*tr;	h3=xl-xr;	h4=sl-sr;	h1=(h1-h2-h3);	t=h1/h4;    % this is not safe programming, but seems to work ok...elseif (xl==xr)&&(tl==tr),	t=tl;else	t=T+1;end;			