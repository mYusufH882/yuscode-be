/*
  Warnings:

  - You are about to drop the column `username` on the `user` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[name]` on the table `User` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX `User_username_key` ON `user`;

-- AlterTable
ALTER TABLE `user` DROP COLUMN `username`;

-- CreateIndex
CREATE UNIQUE INDEX `User_name_key` ON `User`(`name`);
