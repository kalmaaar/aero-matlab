function U=LongGod(U,X,xflux,delta,dt,T)%%  Does a Godunov method with timestep dt by front tracking. %  No CFL condition needed%%N=ceil(T/dt);dt=T/N;tol=0.001;for k=1:N,	IL=find(abs(diff(U))>tol);	if (~isempty(IL)),		u=U([IL,length(U)]);		x=X(IL+1);		[u,x]=SplitTrack(u,x,dt,xflux,delta);		U=proj(X,u,x);	end;end;