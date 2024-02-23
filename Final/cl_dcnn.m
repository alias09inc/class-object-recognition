function predicted_label = cl_dcnn(model, testing_data, layer, my_net)
    net=my_net;
    %テストデータセットの読み込み
    n = length(testing_data);
    IM=[];
    for i=1:n
        img=imread(testing_data{i});
        reimg = imresize(img,net.Layers(1).InputSize(1:2));
        IM=cat(4,IM,reimg);
    end
    % learning
    dcnnf = activations(net,IM,layer);
    dcnnf = squeeze(dcnnf);
    dcnnf = dcnnf/norm(dcnnf);
    data = transpose(dcnnf);
    [predicted_label, scores] = predict(model, data);
end