-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:15:34.448




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV nchar(10)  NOT NULL,
    TenNV nvarchar(50)  NOT NULL,
    Ngaysinh date  NOT NULL,
    GioiTinh nvarchar(5)  NOT NULL,
    Email nvarchar(50)  NOT NULL,
    MucLuong money  NOT NULL,
    MaPhong nchar(10)  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong nchar(10)  NOT NULL,
    Tenphong nvarchar(50)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY (MaPhong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)


ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (MaPhong)
    REFERENCES TPhongban (MaPhong)
;





-- End of file.

