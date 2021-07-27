function v8acc = mac4_preadd_rot(acc,scd,rot,xbuff,xstart,xoffsets,xstep,ystart,ystepmult,zbuff,zstart,zoffsets,zstep)

acc_tmp = [acc(rot+1:8) scd(1:rot)];
zbuff_p = circshift(zbuff,zstep);

acc_tmp(5) = acc_tmp(5) + ...
             (xbuff(xstart+1+xoffsets(1))       + xbuff(ystart+1+xoffsets(1)))                *zbuff(zstart+1+zoffsets(1)) + ...
             (xbuff(xstart+1+xoffsets(1)+xstep) + xbuff(ystart+1+xoffsets(1)+xstep*ystepmult))*zbuff_p(zstart+1+zoffsets(1));
acc_tmp(6) = acc_tmp(6) + ...
             (xbuff(xstart+1+xoffsets(2))       + xbuff(ystart+1+xoffsets(2)))                *zbuff(zstart+1+zoffsets(2)) + ...
             (xbuff(xstart+1+xoffsets(2)+xstep) + xbuff(ystart+1+xoffsets(2)+xstep*ystepmult))*zbuff_p(zstart+1+zoffsets(2));
acc_tmp(7) = acc_tmp(7) + ...
             (xbuff(xstart+1+xoffsets(3))       + xbuff(ystart+1+xoffsets(3)))                *zbuff(zstart+1+zoffsets(3)) + ...
             (xbuff(xstart+1+xoffsets(3)+xstep) + xbuff(ystart+1+xoffsets(3)+xstep*ystepmult))*zbuff_p(zstart+1+zoffsets(3));
acc_tmp(8) = acc_tmp(8) + ...
             (xbuff(xstart+1+xoffsets(4))       + xbuff(ystart+1+xoffsets(4)))                *zbuff(zstart+1+zoffsets(4)) + ...
             (xbuff(xstart+1+xoffsets(4)+xstep) + xbuff(ystart+1+xoffsets(4)+xstep*ystepmult))*zbuff_p(zstart+1+zoffsets(4));

v8acc = acc_tmp;

end