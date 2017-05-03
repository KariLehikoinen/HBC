clear all
% loads the data
D = load('macaque71.mat');
% the macaque data is directed, unsigned, binary

% Decree and Similarity

% Degrees
[indeg,outdeg,degre] = degrees_dir(D.CIJ);
figure();
stem(indeg)
title('Indegree','Fontsize',14);
xlabel('Individual nodes','Fontsize',14);
ylabel('# of incoming links','Fontsize',14);
ylim([0,60]);
figure();
hist(indeg)
title('Indegree','Fontsize',14);
xlabel('# of incoming links a node has','Fontsize',14);
xlim([0,60]);
ylabel('# of nodes','Fontsize',14);
ylim([0,18]);
figure();
stem(outdeg)
title('Outdegree','Fontsize',14);
xlabel('Individual nodes','Fontsize',14);
ylabel('# of outgoing links','Fontsize',14);
ylim([0,60]);
figure();
hist(outdeg)
title('Outdegree','Fontsize',14);
xlabel('# of outgoing links a node has','Fontsize',14);
xlim([0,60]);
ylabel('# of nodes','Fontsize',14);
ylim([0,18]);
figure();
stem(degre)
title('Total degree','Fontsize',14);
xlabel('Individual nodes','Fontsize',14);
ylabel('# of total links','Fontsize',14);
ylim([0,60]);
figure();
hist(degre)
title('Total degree','Fontsize',14);
xlabel('# of total links a node has','Fontsize',14);
xlim([0,60]);
ylabel('# of nodes','Fontsize',14);
ylim([0,18]);

% Joint degree

[Jdeg,joint_a,joint_b,joint_c] = jdegree(D.CIJ);

figure();
imagesc(Jdeg);
xlabel('Outgoing connections','Fontsize',14);
ylabel('Incoming connections','Fontsize',14);

% Edge neighbor overlap

[overlap,over_a,over_b] = edge_nei_overlap_bd(D.CIJ);

figure();
imagesc(overlap);

% Matching index

[MI_in,MI_out,MI_all] = matching_ind(D.CIJ);
figure();
imagesc(MI_in)
figure();
imagesc(MI_out)
figure();
imagesc(MI_all)


% Density

[dens,node_n,edge_n] = density_dir(D.CIJ);

% Clustering and Community Structure

% Clustering
% cluster=clustering_coef_bd(D.CIJ);

% Transivity
trans = transitivity_bd(D.CIJ);


% Assortativity and Core Structure

% Assortativity
asso = assortativity_bin(D.CIJ,1);    % out-degree/in-degree correlation


% Efficiency and diffusion

% Global efficiency
g_eff=efficiency_bin(D.CIJ,0);

