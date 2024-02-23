function model = my_training(data, label, layer, my_net)
    %ネットワークの作成
    net=my_net;
    %トレーニングデータセットの読み込み
    n = length(data);
    IM=[];
    for i=1:n
        img=imread(data{i});
        reimg = imresize(img,net.Layers(1).InputSize(1:2));
        IM=cat(4,IM,reimg);
    end
    % learning
    trained = activations(net,IM,layer);
    trained = squeeze(trained);
    trained = trained/norm(trained);
    data = transpose(trained);
    model = fitcsvm(data, label,'KernelFunction','linear');
end
