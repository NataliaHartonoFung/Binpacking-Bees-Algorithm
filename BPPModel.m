% 1-D Bin Packing Problem 

% Download the datasets from OR-library 
% or you can make your own BPP 
% Change the model: model.v and model.Vmax. 
% Do not change model.n

% Unduh dataset dari OR-library
% atau buat sendiri
% Ganti model: model.v dan model.Vmax
% Jangan mengubah model.n

function model = BPPModel()
 
    %binpack1 - U120_00 
    %Capacity 150,Number of item (n) 120, number of bin in the current best know solution (BKS) 48
    model.v = [42	69	67	57	93	90	38	36	45	42	33	79	27	57	44	84	86	92	46	38	85	33	82	73	49	70	59	23	57	72	74	69	33	42	28	46	30	64	29	74	41	49	55	98	80	32	25	38	82	30	35	39	57	84	62	50	55	27	30	36	20	78	47	26	45	41	58	98	91	96	73	84	37	93	91	43	73	85	81	79	71	80	76	83	41	78	70	23	42	87	43	84	60	55	49	78	73	62	36	44	94	69	32	96	70	84	58	78	25	80	58	66	83	24	98	60	42	43	43	39];   
  
    model.n = numel(model.v);
    model.Vmax = 150;
end