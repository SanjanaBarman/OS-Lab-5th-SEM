#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

// Number of friends
#define NUM_FRIENDS 5

// Mutex to ensure mutual exclusion (only one friend reads at a time)
pthread_mutex_t mutex;

// Function to simulate a friend reading the book
void* read_book(void* arg) {
    int friend_id = *(int*)arg;
    
    // Locking the mutex to ensure mutual exclusion
    pthread_mutex_lock(&mutex);

    // Simulating reading the book
    printf("Friend %d is reading the book...\n", friend_id);
    
    // Simulating time taken to read (sleep for 1 second)
    sleep(1);

    // Unlocking the mutex to allow the next friend to read
    pthread_mutex_unlock(&mutex);

    return NULL;
}

int main() {
    // Array of threads to represent 5 friends
    pthread_t friends[NUM_FRIENDS];
    
    // Array to hold the friend ids
    int friend_ids[NUM_FRIENDS] = {1, 2, 3, 4, 5};
    
    // Initialize the mutex
    pthread_mutex_init(&mutex, NULL);

    // Creating threads for each friend to read the book
    for (int i = 0; i < NUM_FRIENDS; i++) {
        if (pthread_create(&friends[i], NULL, read_book, (void*)&friend_ids[i]) != 0) {
            perror("Failed to create thread");
            return 1;
        }
    }

    // Wait for all threads to finish reading
    for (int i = 0; i < NUM_FRIENDS; i++) {
        pthread_join(friends[i], NULL);
    }

    // Destroy the mutex
    pthread_mutex_destroy(&mutex);

    return 0;
}
*/Friend 1 is reading the book...
Friend 2 is reading the book...
Friend 5 is reading the book...
Friend 3 is reading the book...
Friend 4 is reading the book...*/
