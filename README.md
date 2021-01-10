# **Curvature-based Feature Selection with Application in Classifying Electronic Health Records**
By [Zheming Zuo](https://scholar.google.co.uk/citations?user=jzpjf4UAAAAJ&hl=en)<sup>a,&#42;</sup>, [Jie Li](https://scholar.google.co.uk/citations?user=qiP4qZMAAAAJ&hl=en)<sup>b,&#42;</sup>, and [Noura Al Moubayed](https://scholar.google.co.uk/citations?user=GHecv14AAAAJ&hl=en)<sup>a,&dagger;</sup><br/>
<sup>a</sup> Department of Computer Science, Durham University, Durham DH1 3LE, UK<br/>
<sup>b</sup> School of Computing \& Digital Technologies, Teesside University, Middlesbrough TS3 6DR, UK<br/>
<sup>&#42;</sup> Equal contribution.<br/>
<sup>&dagger;</sup> Corresponding author.

## _Introduction_
This is an official implementation of our Curvature-based Feature Selection (CFS) method.

CFS is a simple yet efficient feature selection method, which perfroms based on the Menger curvature and contributes the classification performance.

<img src = "./fig/CFS.png" width = "100%" alt = "Idea of our CFS">

For more details, please refer our [paper](researchGateVersion).

## _Contents_
1. [Requirement](#requirement)
2. [Preparation](#preparation)
3. [Run](#run)
4. [Performance](#performance)

### _Requirement_
- MATLAB >= 2016a

### _Preparation_
Clone the github repository. We will call the directory `$CFS_ROOT`
```Shell
  git https://github.com/zhemingzuo/CFS
  cd $CFS_ROOT
```
### _Run_
Run our CFS method
```Shell
  cd $CFS_ROOT/src
```
and then run `demo_CFS.m`.

### _Performance_
For performance comparisons that might be used in your ongoing research work, we list the peak performance of CFS on four health care datasets: [Cervical Cancer (Risk Factors) Data Set (CCRFDS)](https://archive.ics.uci.edu/ml/datasets/Cervical+cancer+%28Risk+Factors%29), [Breast Cancer Coimbra Data Set (BCCDS)](https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Coimbra), [Breast Tissue Data Set (BTDS)](https://archive.ics.uci.edu/ml/datasets/Breast+Tissue), and [Diabetic Retinopathy Debrecen Data Set (DRDDS)](https://archive.ics.uci.edu/ml/datasets/Diabetic+Retinopathy+Debrecen+Data+Set).

| Data Set | Method     | Original Feat. Dim.| Selected Feat. Dim. | Top Mean Acc. (%) |
| :---     | :---       | :---               | :---                | :---              |  
| CCRFDS   | CFS-TSK+   | 9                  | 7                   | 97.09             |
| BCCDS    | CFS-TSK+   | 9                  | 7                   | 79.17             |
| BTDS     | CFS-...    | 9                  | 7                   | 100.00            |
| BCCDS    | CFS-BPNN   | 19                 | 15                  | 74.72             |
> ... denotes that our CFS can be combined with multiple supervised classifiers to achieve the same classification performance.

## _Citation_
If you find CFS useful in your research, please consider citing:
```
@article{Zuo2021Cfs,
    Title = {Curvature-based Feature Selection with Application in Classifying Electronic Health Records},
	Author = {Z. Zuo and J. Li and N. A. Moubayed},
	Journal = {arXiv preprint},
	Year = {2021}
}
```