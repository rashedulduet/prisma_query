-- CreateTable
CREATE TABLE `employee` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `designation` VARCHAR(50) NOT NULL,
    `mobile` VARCHAR(15) NOT NULL,
    `city` VARCHAR(20) NOT NULL,
    `salary` INTEGER NOT NULL,
    `Birthday` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
