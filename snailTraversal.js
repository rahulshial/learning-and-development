/**
 * @param {number} rowsCount
 * @param {number} colsCount
 * @return {Array<Array<number>>}
 */
  
Array.prototype.snail = function (rowsCount, colsCount) {
    if (this.length !== rowsCount * colsCount) {
      return [];
    }
  const result = Array.from({ length: rowsCount }, () => Array(colsCount).fill(0));
  for (let col = 0; col < colsCount; col++) {
    if (col % 2 === 0) {
      for (let row = 0; row < rowsCount; row++) {
        result[row][col] = this[col * rowsCount + row]
      }
    } else {
        for (let row = rowsCount - 1; row >= 0; row--) {
          result[row][col] = this[col * rowsCount + rowsCount - row - 1]
        }
      }
  }
  return result;
}
 
/**
 * const arr = [1,2,3,4];
 * arr.snail(1,4); // [[1,2,3,4]]
 */

const arr = [
  19, 10, 3, 7, 9, 8, 5, 2, 1, 17, 16, 14, 12, 18, 6, 13, 11, 20, 4, 15,
];
console.log(arr.snail(5, 4));
