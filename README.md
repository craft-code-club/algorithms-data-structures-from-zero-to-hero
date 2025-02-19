# Algorithms &amp; Data Structures - From Zero to Hero

![Algorithms & Data Structures - From Zero to Hero](./media/algorithms_data_structures.jpg)

Este repositório é destinado a serie da nossa comunidade **Craft & Code Club** sobre **Algorithms &amp; Data Structures - From Zero to Hero**.

Vamos usar este repositorio para compartilhar o roadmap, códigos, slides e materiais de apoio aos nossos encontros.

## Sobre a série

-   [YouTube Playlist](https://www.youtube.com/watch?v=MtLv9Rwb55Q&list=PLl10TyPY67Jgbh4QdRlRKr-7PjB9i5hWg)
-   [Meetup](https://www.meetup.com/craft-code-club/events/)

## Contrubuições

Todas as contribuições são bem-vindas.

-   Se tens alguma sugestão ou correção, por favor, abra uma issue deste repositório.
-   Se encontraste algum erro ou algo que possa ser melhorado, por favor, abra um pull request.

## Roadmap

```mermaid
flowchart
  BigO[Big O Notation] --> Arrays-Topic

  subgraph Arrays-Topic[Arrays]
    direction TB
    Arrays --> BinarySearchBasic["Binary Search (Basic)"]
  end

  BinarySearchBasic --> Strings
  Strings --> BubbleSort

  subgraph BasicSorting-Topic["Sorting (Basic)"]
    direction TB
    BubbleSort(Bubble Sort)
      --> InsertionSort[Insertion Sort]
      --> SelectionSort[Selection Sort]
  end

  BasicSorting-Topic --> LinkedList-Topic

  subgraph LinkedList-Topic[Linked List]
    direction TB
    DoublyLinkedList[Doubly Linked List]
    Sentinels
    FastSlow[Fast and Slow]
    DummyNodePointer["Dummy node (pointer)"]
    IdentifyCycles[Identify Cycles]
    FloydCycle[Floyd Cycle]
  end

  LinkedList-Topic
    --> BinarySearchDeep["Binary Search (Deep)"]
    --> TwoPointers[Two Pointers]
    --> SlidingWindow[Sliding Window]
    --> PrefixSum[Prefix Sum]
    --> HashMapSet-Topic

  subgraph HashMapSet-Topic[Hash Map / Set]
    HashMapSet-ColisionResolution["Colision resolution (Buckets / Open Adrress)"]
    CounterFrequency[Counter / Frequency]
  end

  HashMapSet-Topic
    --> Stack
    --> Recursion-Topic

  subgraph Recursion-Topic[Recursion]
    direction TB
    FunctionalProgramming[Functional Programming]
    ReverseLinkedList[Reverse LinkedList]
    Fibonnacci
    PowerOf[Power of 2/3/4]
  end

  Recursion-Topic
    --> Queue
    --> Trees

  subgraph Trees-Topic[Trees]
    direction TB
    Trees
      --> BinaryTree[Binary Tree]
      --> DFS-Topic
      --> BFS-Topic
      --> KAry[K-ary]
      --> BinarySearchTree[Binary Search Tree]

    subgraph DFS-Topic[DFS]
      direction LR
        DFS --> DFS-Recursion[Recursion]
        DFS --> DFS-Stack[Stack]
        DFS --> DFS-PreOrder[Pre Order]
        DFS --> DFS-InOrder[In Order]
        DFS --> DFS-PostOrder[Post Order]
        DFS --> DFS-Boundary[Boundary]
        DFS --> DFS-Diagonal[Diagonal]
    end

    subgraph BFS-Topic[BFS]
      direction TB
      BFS --> BFS-Queue[Queue]
    end

  end

  BinarySearchTree
    --> BinaryHeap[Binary Heap]
    --> HeapSort

  subgraph MediumSorting-Topic["Sorting (Medium)"]
    direction TB
    HeapSort(Heap Sort)
      --> MergeSort[Merge Sort]
      --> ShellSort[Shell Sort]
      --> QuickSort[Quick Sort]
  end

  QuickSort --> Graphs

  subgraph Graphs-Topic[Graphs]
    direction LR
    Graphs
      --> Graphs-DFSBFS[DFS / BFS]
      --> Dijkstra

    subgraph SSSP-Topic[SSSP]
      Dijkstra
        --> Bellman-Ford
        --> A-Star
    end

    A-Star --> FloydWarshall

    subgraph APSP-Topic[APSP]
      FloydWarshall[Floyd Warshall]
    end
  end

  FloydWarshall
    --> TopologicalSorting[Topological Sorting]
    --> Backtracking
    --> Top-Down
    --> Memoization
    --> Botton-Up
    --> Tabulation
    --> DynamicPrograming

  subgraph DynamicPrograming-Topic[Dynamic Programing]
    direction TB
    DynamicPrograming[Dynamic Programing]
      --> DynamicPrograming-1D[1D]
      --> DynamicPrograming-Multidimensional[Multidimensional]
  end

  DynamicPrograming-Multidimensional --> BitManipulation-Base-2-8-16

  subgraph BitManipulation-Topic[Bit Manipulation]
    direction TB
    BitManipulation-Base-2-8-16[Base 2 / Base 8 / Base 16]
      --> BitManipulation-Complement[Complement]
      --> BitManipulation-Shift[Bit Shift Left and Right]
      --> BitManipulation-Operations[And / Or / Xor]
  end

  BitManipulation-Operations --> CountingSort

  subgraph AdvancedSorting-Topic["Sorting (Advanced)"]
    direction TB
    CountingSort[Counting Sort]
      --> RadixSort[Radix Sort]
      --> BucketSort[Bucket Sort]
  end

  BucketSort
    --> Trie
    --> Intervals
    --> Greedy
    --> AdvancedGraphs["Graphs (Advanced)"]
    --> MathGeometry["Math & Geometry"]
```



-   [x] **Big O Notation - Análise Assintótica de Algoritmos**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=MtLv9Rwb55Q)


-   [x] **Arrays**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=c95xvXCU34A)


-   [x] **Strings**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=B9CCEwjoXBk)


-   [x] **Algoritmos de Ordenação Básicos**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=GxhxsbbzaTI)
    -   Topicos:
        -   [Bubble Sort](https://github.com/NelsonBN/algorithms-data-structures-bubble-sort)
        -   [Insertion Sort](https://github.com/NelsonBN/algorithms-data-structures-insertion-sort)
        -   [Selection Sort](https://github.com/NelsonBN/algorithms-data-structures-insertion-sort)


-   [x] **Linked Lists**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=j0E5hJZ__EA)
    -   Topicos:
        -   [Singly Linked List](https://github.com/NelsonBN/algorithms-data-structures-linked-list/blob/main/src/singly_linked_list.py)
            -   [Operations](https://github.com/NelsonBN/algorithms-data-structures-linked-list/blob/main/src/singly_linked_list_operations.py)
            -   [Operations Optimized](https://github.com/NelsonBN/algorithms-data-structures-linked-list/blob/main/src/singly_linked_list_operations_optimized.py)
        -   Doubly Linked List
        -   Sentinels
        -   Dummy node (pointer)
        -   [Rotate Linked List](https://github.com/NelsonBN/algorithms-data-structures-linked-list/blob/main/src/rotate_linked_list.py)
            -   [Visualização](https://github.com/NelsonBN/algorithms-data-structures-linked-list/raw/main/media/reversing_linked_list.webp)
        -   [Fast and Slow Pointer](https://github.com/NelsonBN/algorithms-data-structures-linked-list/blob/main/src/fast_and_slow_pointer.py)
        -   [Identify Cycles](https://github.com/NelsonBN/algorithms-data-structures-linked-list/blob/main/src/identifying_cycles.py)
        -   [Floyd Cycle](https://github.com/NelsonBN/algorithms-data-structures-linked-list/blob/main/src/floyd_cycle.py)


-   [x] **Binary Search**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=62ZGcXDpbys)
    -   [Demo](https://github.com/NelsonBN/algorithms-data-structures-binary-search)


-   [x] **Two Pointers**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=a1QMdXgcQwY)


-   [x] **Sliding Window**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=OvIJw1AMNzI)
    -   Exercicios:
        -   Fixed Window -> [1343. Number of Sub-arrays of Size K and Average Greater than or Equal to Threshold](https://leetcode.com/problems/number-of-sub-arrays-of-size-k-and-average-greater-than-or-equal-to-threshold/description/)


-   [x] **Prefix Sum**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=yMnLofkS7DM)


-   [x] **Hash Map / Set**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=JFhdCBrKTX0)
    -   [Demo](https://github.com/NelsonBN/algorithms-data-structures-hashtable)


-   [x] **Stack**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=JRbrNgsYuT0)
    -   [Demo](https://github.com/matheusses/dsa/tree/main/src/stack)
    -   Exercicios:
        -   [20. Valid Parentheses](https://leetcode.com/problems/valid-parentheses/description/)
        -   [1544. Make The String Great](https://leetcode.com/problems/make-the-string-great/description/)


-   [x] **Recursividade**
    -   Fundamentos
        -   [Youtube - Encontro](https://www.youtube.com/watch?v=KkSAaQHCkSE)
        -   [Demo](https://github.com/NelsonBN/algorithms-data-structures-recursion)
    -   Paradigma Funcional
        -   [Youtube - Encontro](https://www.youtube.com/watch?v=rbEYjJdaIZI)
        -   [Demo](./src/functional-recursion/README.md)


-   [x] **Queue**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=KJaVKLZsMcg)
    -   [Demo](https://github.com/NelsonBN/algorithms-data-structures-queue)
    -   Exercicios:
        -   [232. Implement Queue using Stacks](https://leetcode.com/problems/implement-queue-using-stacks/description/)


-   [x] **Tree**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=OAcm2rXqz9M)


-   [x] **Tree Traverse**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=_-2F65OVWjo)
    -   [Code Implementation examples in Go](https://github.com/giovannymassuia/DS-A/tree/main/go-dsa/tree)


-   [x] **k-ary tree**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=FLZxMQFTqvY)
    -   [Code Implementation examples in Go](https://github.com/giovannymassuia/DS-A/tree/main/go-dsa/tree/k_ary)


-   [x] **Binary Search Tree**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=CITquySB4ls)
    -   [Demo](https://github.com/NelsonBN/algorithms-data-structures-binary-search-tree)
    -   [Playground](https://www.cs.usfca.edu/~galles/visualization/BST.html)


-   [x] **Binary Heap**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=HVWw20nOLHk)
    -   [Demo](https://github.com/NelsonBN/algorithms-data-structures-binary-heap)


-   [x] **Algoritmos de Ordenação Básicos - Heap Sort**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=wUfOyKMjamM)
    -   [Demo](https://github.com/NelsonBN/algorithms-data-structures-heap-sort)


-   [ ] **Algoritmos de Ordenação Básicos - Merge Sort**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=lbktBOwmmhg)
    -   [Demo - Merge Sort](https://github.com/NelsonBN/algorithms-data-structures-merge-sort)
    -   [Demo - Stable Vs. Unstable Sorting Algorithms](https://github.com/NelsonBN/algorithms-data-structures-stable-vs-unstable-sort-algos)


-   [x] **Algoritmos de Ordenação Básicos - Shell Sort**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=symbT7Cgrr8)
    -   [Demo](https://github.com/NelsonBN/algorithms-data-structures-shell-sort)


-   [x] **Algoritmos de Ordenação Básicos - Quick Sort**
    -   [Youtube - Encontro](https://www.youtube.com/watch?v=2T0Itw-oaEA)
    -   [Demo](https://github.com/NelsonBN/algorithms-data-structures-quick-sort)


-   [x] **Algoritmos de Ordenação Básicos - Introdução a Grafos**
    -   [Youtube - Encontro - Part I](https://www.youtube.com/watch?v=cILrU-dtuEc)
    -   [Youtube - Encontro - Part II](https://www.youtube.com/watch?v=IP0C0qCYWIc)


-   [ ] **...**

## Status

![Links](https://github.com/craft-code-club/algorithms-data-structures-from-zero-to-hero/actions/workflows/markdown-link-check.yml/badge.svg)
