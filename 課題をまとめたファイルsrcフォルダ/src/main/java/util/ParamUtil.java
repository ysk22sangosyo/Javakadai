package util;

/**
 * メソッドをまとめたParamUtilクラス
 *	   
    /**
     * ポイント計算
     */
			public class ParamUtil {
				   public static int getPoint(int amountInt) {
					    
					   
					int Point1 =  (int)(amountInt * 0.01);
					return Point1;
				   }

    /**
     * ポイント計算(ランクあり)
     */
				   public static int getPoint(int amountInt,double decimal) {
					    
					   int Point2 = (int)(amountInt * decimal);
					   return Point2;
						
					   }

    /**
     * 引数に指定した文字列がnull、または空文字かを判定
     */ public static boolean isNullOrEmpty(String str) {
			if(str ==  null || str.isEmpty()) {
				return true;
		} else {
			return false;
		  }
     }
}