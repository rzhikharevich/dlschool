Датасет (3.5 миллиона игр):

- https://chess-research-project.readthedocs.io/en/latest

- https://drive.google.com/file/d/0Bw0y3jV73lx_aXE3RnhmeE5Rb1E/edit?usp=sharing

Датасет нужно предварительно обработать скриптом prepare_games.sh, затем взять,
например, первые 60 тысяч строк (игр).

```shell
./prepare_games.sh < path/to/dataset.txt | head -n60000 > games.txt
```

Jupyter-тетрадь содержит в себе реализацию варианта DenseNet, в котором не
используется max pooling, так как max pooling предназначен для устранения шума и
инвариантности к поворотам – и то, и другое не имеет смысла в контексте
шахматной позиции. Также к DenseNet добавлены блоки squeeze-excitation.
