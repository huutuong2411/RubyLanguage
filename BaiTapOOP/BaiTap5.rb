class Nguoi
    attr_accessor :hoTen_160, :tuoi_160, :cmnd_160
  
    def initialize(hoten_160, tuoi_160, cmnd_160)
      @hoTen_160 = hoten_160
      @tuoi_160 = tuoi_160
      @cmnd_160 = cmnd_160
    end
  
    def show
      puts "Ho ten: #{@hoTen_160}"
      puts "Tuoi: #{@tuoi_160}"
      puts "CMND: #{@cmnd_160}"
    end
  end
  
  class Phong
    attr_accessor :soNgayThue_160, :nguoiThue_160
  
    def initialize(soNgayThue_160, nguoiThue_160)
      @soNgayThue_160 = soNgayThue_160
      @nguoiThue_160 = nguoiThue_160
    end
  
    def show
      puts "So ngay thue: #{@soNgayThue_160}"
      puts "-- Thong tin nguoi thue --"
      @nguoiThue_160.show
    end
  end
  
  class PhongA < Phong
    attr_accessor :gia_160, :loaiPhong_160
  
    def initialize(soNgayThue_160, nguoiThue_160)
      super(soNgayThue_160, nguoiThue_160)
      @gia_160 = 500
      @loaiPhong_160 = "Loai A"
    end
  
    def show
      puts "Loai phong: #{@loaiPhong_160}"
      super
    end
  
    def tienThue
      tienThue_160 = @soNgayThue_160 * @gia_160
      puts "Tien thue: #{tienThue_160}"
    end
  end
  
  class PhongB< Phong
    attr_accessor :gia_160, :loaiPhong_160
  
    def initialize(soNgayThue_160, nguoiThue_160)
      super(soNgayThue_160, nguoiThue_160)
      @gia_160 = 300
      @loaiPhong_160 = "Loai B"
    end
  
    def show
      puts "Loai phong: #{@loaiPhong_160}"
      super
    end
  
    def tienThue
      tienThue_160 = @soNgayThue_160 * @gia_160
      puts "Tien thue: #{tienThue_160}"
    end
  end
  
  class PhongC < Phong
    attr_accessor :gia_160, :loaiPhong_160
  
    def initialize(soNgayThue_160, nguoiThue_160)
      super(soNgayThue_160, nguoiThue_160)
      @gia_160 = 100
      @loaiPhong_160 = "Loai C"
    end
  
    def show
      puts "Loai phong: #{@loaiPhong_160}"
      super
    end
  
    def tienThue
      tienThue_160 = @soNgayThue_160 * @gia_160
      puts "Tien thue: #{tienThue_160}"
    end
  end
  
  class Khachsan
    attr_accessor :listPhong
  
    def initialize
      nguoithue1 = Nguoi.new("Tường", 20, "0123456789")
      nguoithue2 = Nguoi.new("Sơn", 21, "0123456788")
      nguoithue3 = Nguoi.new("Bình", 21, "0123456777")
  
      phong1 = PhongA.new(2, nguoithue1)
      phong2 = PhongB.new(3, nguoithue2)
      phong3 = PhongC.new(1, nguoithue3)
  
      @listPhong = [phong1, phong2, phong3]
    end
  
    def show
      i = 1
      puts "DANH SACH PHONG"
      listPhong.each do |val|
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
  end
  
  KS = Khachsan.new()
  KS.show