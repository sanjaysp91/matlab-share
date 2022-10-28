% mask in dec
mask_dbcID_d = double(536870911);

% DBC ID in dec
id_dbc_d = double(2571730983);

% % CAN ID in dec 
% % CAN ID = BIT_WISE_AND(MASK, DBC ID) 
% id_can_d = bitand(mask_dbcID_d, id_dbc_d);
% sprintf('%d', id_can_d)
% 
% % CAN ID in hex  
% id_can_h = dec2hex(id_can_d,8);
% sprintf('%c', id_can_h)
[id_can_h] = dbcID2canID(mask_dbcID_d,id_dbc_d);

function [id_can_h] = dbcID2canID(mask_dbcID_d,id_dbc_d)
% DBC ID in dec to CAN ID in hex conversion 
%   
    % CAN ID in dec 
    % CAN ID = BIT_WISE_AND(MASK, DBC ID) 
    id_can_d = bitand(mask_dbcID_d, id_dbc_d);
    sprintf('CAN ID in DEC = %d', id_can_d)
    
    % CAN ID in hex  
    id_can_h = dec2hex(id_can_d,8);
    sprintf('CAN ID in HEX = %s', id_can_h)

end